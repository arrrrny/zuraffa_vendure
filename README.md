# vendure

The Zuraffa reimplementation of the Vendure Flutter SDK — the GraphQL
commerce seam for the Zuraffa ecosystem: authenticate, manage orders, browse
the catalog, manage customers, inspect the system, and run custom operations
against a Vendure shop-api.

Reimplemented on the zfa clean-architecture stack (port/adapter idiom): the
outbound seam is one `VendureDataSource` port with a pure-Dart
`InMemoryVendureDataSource` (tests/dev) and a `GraphQLVendureDataSource`
(device), the schema's 179 entities are zorphy types, and the 18 GraphQL
mutation unions are hand-written sealed classes dispatched on the wire's
`runtimeType` key.

## Install

```yaml
dependencies:
  vendure: ^7.3.6
```

## Usage

Initialize the facade once; it wires the context, the token manager, and
the five repositories behind the datasource port. The initializer family:

```dart
import 'package:vendure/vendure.dart';

// Plain — endpoint + optional token/channel/apiKey/context knobs.
final vendure = await Vendure.initialize(
  endpoint: 'https://shop.example.com/shop-api',
  languageCode: 'en',
  // token, channelToken, apiKey, apiKeyHeaderKey,
  // useVendureGuestSession, customFieldsConfig, timeout,
  // appCheckConfig, fetchToken, tokenParams, sessionDuration,
  // enableEnumDiscovery
);

// Native (username/password) — authenticates before resolving.
final vendure = await Vendure.initializeWithNativeAuth(
  endpoint: 'https://shop.example.com/shop-api',
  username: 'me@zuzu.dev',
  password: 'secret',
);

// Firebase — authenticates with uid + jwt.
final vendure = await Vendure.initializeWithFirebaseAuth(
  endpoint: 'https://shop.example.com/shop-api',
  uid: uid,
  jwt: jwt,
);

// Custom auth — supplies the TokenFetcher + params the token manager
// refreshes through.
final vendure = await Vendure.initializeWithCustomAuth(
  endpoint: 'https://shop.example.com/shop-api',
  fetchToken: myTokenFetcher,
  tokenParams: {'uid': uid, 'jwt': jwt},
);

// API-key only (guest / server-to-server).
final vendure = await Vendure.initializeWithApiKey(
  endpoint: 'https://shop.example.com/shop-api',
  apiKey: 'my-key',
);
```

The test/dev constructor binds the pure-Dart in-memory datasource —
scripted payloads, no server, no network:

```dart
final vendure = Vendure.forTesting(
  endpoint: 'https://shop.example.com/shop-api',
  dataSource: InMemoryVendureDataSource(
    script: {
      // keyed by the operation's expectedDataType; each value is the
      // EXTRACTED payload (the envelope minus `data` and the key itself).
      'activeOrder': <String, dynamic>{...},
    },
  ),
);
```

The six operation groups ride the facade:

```dart
// Orders — document/variables/decode ride the port.
final order = await vendure.order.getActiveOrder();          // Order?
await vendure.order.addItemToOrder(productVariantId: id, quantity: 2);
await vendure.order.applyCouponCode(couponCode: 'SUMMER');
final states = await vendure.order.getNextOrderStates();     // List<String>
await vendure.order.transitionOrderToState(state: 'ArrangingPayment');

// Auth — the session token rides the vendure-auth-token response header,
// not the body; getToken/getTokenFirebase capture it for you.
final result = await vendure.auth.authenticate(
  username: 'me@zuzu.dev',
  password: 'secret',
);
final token = await vendure.auth.getToken(
  username: 'me@zuzu.dev',
  password: 'secret',
);
await vendure.auth.logout();
await vendure.auth.registerCustomerAccount(input: registerCustomerInput);

// Catalog.
final collections = await vendure.catalog.getCollections();
final collection = await vendure.catalog.getCollectionBySlug(slug: 'shoes');
final products = await vendure.catalog.getProducts(
  options: ProductListOptions(),
);
final hit = await vendure.catalog.searchCatalog(input: searchInput);

// Customer.
final customer = await vendure.customer.getActiveCustomer();   // Customer?
final user = await vendure.customer.getCurrentUser();          // CurrentUser?
final channel = await vendure.customer.getActiveChannel();
await vendure.customer.updateCustomer(input: updateCustomerInput);

// System.
final countries = await vendure.system.getAvailableCountries();
final facets = await vendure.system.getFacets();

// Custom — the raw escape hatch: any document, any decode, sharing the
// facade's single datasource (context, error path, retry policy).
final ping = await vendure.custom.query<String>(
  'query { ping }',
  {},
  expectedDataType: 'ping',
);
final page = await vendure.custom.queryListPaginated<Order>(
  ordersQuery,
  fromJson: Order.fromJson,
  expectedDataType: 'orders',
  options: ListOptions(skip: 0, take: 20),
);
final headers = await vendure.custom.extractResponseHeaders(
  'mutation { authenticate(...) { __typename } }',
  {'username': 'me@zuzu.dev', 'password': 'secret'},
  ['vendure-auth-token'],
);
```

Runtime reconfiguration after init:

```dart
Vendure.setAuthToken(token);
Vendure.setLanguageCode('de');
Vendure.setChannelToken(channelToken);
Vendure.setApiKey(key, apiKeyHeaderKey: 'x-api-key');
await Vendure.refreshToken(tokenParams);
Vendure.destroy(); // releases the singleton; instance throws until re-init
```

Subscriptions (live streams) ride the same facade:

```dart
await for (final customer in vendure.customer.activeCustomerStream()) {
  // …
}
```

## Architecture

```
Vendure (facade)
 ├─ VendureContext (endpoint, languageCode, channelToken, apiKey, token, …)
 ├─ TokenManager (session token + optional fetch-refresh closure)
 ├─ VendureDataSource (port — one error path: VendureDataSourceException)
 │    ├─ GraphQLVendureDataSource   (HttpLink → AuthLink chain, noCache,
 │    │                             __typename→runtimeType normalization,
 │    │                             transient-network retry)
 │    └─ InMemoryVendureDataSource  (scripted payloads, request recording)
 ├─ Data{Order,Catalog,Customer,System,Auth}Repository (anchored-port impls)
 ├─ operations (order/catalog/customer/system/auth/custom)
 └─ entities/ — 179 zorphy types + 18 sealed mutation unions
```

- **One error path.** Transport failures, GraphQL errors, and malformed
  payloads surface as `VendureDataSourceException`; nothing raw escapes the
  port.
- **The session token rides a response header** (`vendure-auth-token`), so
  `getToken`/`getTokenFirebase` go through `mutateWithHeaders`.
- **Language code rides the endpoint URL** as a query parameter (Vendure's
  multi-language routing); channel token rides the `vendure-token` header;
  api key rides `vendure-api-key` (configurable header key).
- **List envelope fidelity**: `queryList` extracts the `expectedDataType`
  key and requires it to be a bare list (scalar lists decode without a
  `fromJson`).
- **Wire dispatch**: the server's `__typename` is normalized to
  `runtimeType` before the sealed unions decode — on both adapters.

## Development

```sh
dart pub get
dart run build_runner build --delete-conflicting-outputs  # zorphy/json gen
dart test -j 2
dart analyze
dart format --set-exit-if-changed lib test
```

A bare clone resolves hosted `zuraffa` from pub.dev — no sibling checkout
is required. To develop against a local `zuraffa` checkout (the fleet
layout, `~/Developer/zuraffa` next to this repo), create an untracked
`pubspec_overrides.yaml` beside `pubspec.yaml`:

```yaml
dependency_overrides:
  zuraffa:
    path: ../zuraffa
```

The file is gitignored (issue #9): committed overrides must never pin a
sibling path, or an isolated `/tmp` clone fails `dart pub get` at step one.

Pure-Dart package (no Flutter dependency): no presenter/controller/route
layer (Constitution VII).

## License

MIT — see [LICENSE](LICENSE).
