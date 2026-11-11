## Unreleased

Two transport regressions from the 7.x reimplementation, both reported live
on zik_zak (websocket churn + unhandled `Bad state: Future already
completed`):

- **Subscriptions speak `graphql-transport-ws` again.** The reimplementation
  dropped the source SDK's `subProtocol: GraphQLProtocol.graphqlTransportWs`
  on the subscription `WebSocketLink`, silently falling back to the legacy
  `graphqlWs` protocol. Vendure servers close the socket right after
  `connection_init`, and with `autoReconnect` that becomes the endless
  `Connected to websocket → Initialising connection → Disconnected from
  websocket` loop (reconnect every 5s, forever). Restored from
  vendure-flutter-sdk 3.0.1 `_getSubscriptionClient`.
- **The `timeout` parameter is wired into the client.** `VendureContext.timeout`
  was dead code: the main `GraphQLClient` was built without
  `queryRequestTimeout`, so `graphql`'s silent 5s default applied — exactly
  what consumers like zik_zak disable on purpose (zik_zak issue 265: the
  budget is enforced per call instead). The default's `Stream.timeout` fires
  a synthetic `TimeoutException` while the late real response still completes
  the query manager's unguarded `onData` completer a second time — the
  unhandled `Bad state: Future already completed` crash through
  `HttpLink.request` + the AuthLink chain. `queryRequestTimeout:
  context.timeout` restores the source SDK's `queryRequestTimeout` contract
  (`timeout: null` = no transport-level timeout).
- Regression suite: T1–T4 in `test/graphql_datasource_suite_test.dart` pin
  the client request timeout (context-carried, null = disabled) and the
  subscription wire configuration (protocol, endpoint scheme/languageCode
  swap).
- **The `timeout` wiring no longer arms graphql's `Stream.timeout`.**
  Passing `context.timeout` into `GraphQLClient.queryRequestTimeout`
  (the 7.3.8 regression, issue #8) armed a `Stream.timeout` on every
  Shop API call: when the stream went quiet past the budget, the request
  failed as a synthetic `TimeoutException` (`No stream event`) and the
  late real response then double-completed the query manager's unguarded
  completer — the unhandled `Bad state: Future already completed` crash
  in the root zone (graphql 5.2.4, `query_manager.dart`). The client now
  pins `queryRequestTimeout: null` (explicit — omitting restores the
  silent 5 s default), and the datasource enforces
  `VendureContext.timeout` in `_executeRaw` / `mutateWithHeaders` via
  cancellable `Future.timeout`, translating expiry to
  `VendureDataSourceException`. Regression suite: T1 re-pinned, T5–T7 in
  `test/graphql_datasource_suite_test.dart` (a quiet stream surfaces a
  clean exception with zero unhandled async errors; the late response
  lands silently).

## 7.3.6 - 2026-11-02

- Fix: `CustomOperations.queryListPaginated` / `mutateListPaginated` restore
  the source SDK's envelope normalization — `__typename` → `runtimeType`
  before `fromJson` (with the caller's `convertEnums` honored on output,
  which was previously dead on this path). `gql()` injects `__typename`
  into every selection set and the raw escape hatch returns the payload
  as-is, so polymorphic entity decoders (zorphy `explicitSubTypes`
  fromJson — e.g. zik_zak's `Listing.fromJson`) threw
  `UnsupportedError: The __typename 'ChannelListing' is not supported…`
  on every paginated row. Regression suite:
  `test/custom_operations_paginated_suite_test.dart` (zuraffa_vendure#2, PR#3).
- Mono-version fleet alignment to 7.3.6; internal dependencies refreshed; xml override 7.1.0.

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
