## 7.3.5

- Fix: `Vendure._finalizeInitialization` connection-check query now passes
  `fromJson: null` so the scalar `__typename` string return doesn't fail
  the `Map<String, dynamic>` expectation.

## 7.3.4

- Fix: `CurrentUserChannel.code` is now nullable. Real Vendure backend
  `authenticate` / `firebaseAuth` mutations select `channels { id token
  permissions }` without `code`, which previously caused
  `CheckedFromJsonException` during JSON decoding.

## 7.3.3

Hotfix (consumer-reported via the fleet verification round — zik_zak's
vendure-client init scenarios):

- **`mutateWithHeaders` tolerates an absent body** — the auth seam's
  contract is headers-only (the session token rides the
  `vendure-auth-token` response header). A mutation whose
  `expectedDataType` key is absent in the response (e.g. a firebase
  token-exchange server answering with only `__typename`) now resolves
  to null data instead of throwing `No data returned for expected type:
  authenticate`, matching vendure-flutter-sdk 3.0.1's
  `AuthBaseOperations.extractResponseHeaders`. `VendureResponse.data` is
  `T?`.
- Regression locks A2 (in-memory, headers-only firebase exchange) and
  G10 (graphql adapter, `__typename`-only response).

## 7.3.2

The Zuraffa reimplementation of the Vendure Flutter SDK, shipped as the
same `vendure` package name.

- **Facade** (`Vendure`): five init variants + `forTesting`, the runtime
  setters (auth token, languageCode, channelToken, apiKey), `refreshToken`,
  `destroy`, GetIt registration (`registerVendureDependencies` /
  `registerVendureTestDependencies`), and the connection-check ping.
- **Six operation groups** on the facade: `order`, `auth`, `customer`,
  `catalog`, `system`, `custom` (raw query/mutate/queryList/mutateList,
  paginated variants, response-header extraction).
- **Datasources**: the `VendureDataSource` port (one error path —
  `VendureDataSourceException`), `GraphQLVendureDataSource` (link chain:
  HttpLink → apiKey → vendure-token → App Check → Bearer; noCache policies;
  `__typename`→`runtimeType` normalization; transient-network retry;
  WebSocket subscriptions with the Vendure initialPayload), and the
  pure-Dart `InMemoryVendureDataSource` (scripted payloads, request
  recording, response-header scripting).
- **Entities**: the schema's 179 entities as zorphy types (11 enums +
  `SearchResultPrice` included), and the 18 mutation unions as hand-written
  sealed classes dispatching on the wire `runtimeType` key.
- **Auth**: `DataAuthRepository` with the `AuthErrorClassifier` credential
  vocabulary; the session token is captured from the `vendure-auth-token`
  response header via `mutateWithHeaders`.
- **Token lifecycle**: `TokenManager` + `TokenLocalDataSource` seam with
  the fetch-refresh closure wired by the facade.

### Port fidelity notes (from vendure-flutter-sdk 3.0.1)

- `queryList` requires the extracted payload to be a bare list; scalar
  lists (e.g. `nextOrderStates`) decode without a `fromJson`.
- `custom.query/mutate` accept an optional `fromJson`; omitted, the
  extracted payload returns raw (scalar/Map/List).
- Response normalization (`__typename` → `runtimeType`, enum conversion
  off) runs before the typed decode on both adapters, so the sealed unions
  dispatch exactly like the old SDK's remote path.
- The old SDK's `CustomOperations` built a second datasource; this port
  wires the facade's single datasource through, so custom operations share
  the context, the error path, and the retry policy.

### Tests

24 behavioral tests, pure Dart, no network: the port contract and one
error path (D1–D6), the GraphQL adapter's envelope/dot-path/ErrorResult
handling, context assembly, and the union wire-dispatch normalization
(G1–G9), and the facade lifecycle plus per-group request-shape fidelity
(F1–F4, O1–O3, A1, C1) through the scripted in-memory datasource.
