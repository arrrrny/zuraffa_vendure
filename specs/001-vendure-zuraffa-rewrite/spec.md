# Feature Specification: 001-vendure-zuraffa-rewrite — the Vendure SDK on the Zuraffa stack

**Template Version**: `zuraffa-1.0`

**Feature Branch**: `001-vendure-zuraffa-rewrite`

**Created**: 2026-10-31

**Status**: Approved — greenfield reimplementation of the published `vendure`
Flutter SDK (vendure-flutter-sdk, pub.dev 3.0.1) onto the Zuraffa
clean-architecture stack. The prior work in the source repo
(`specs/001-vendure-zuraffa-plugin-rewri/`: research.md, entity-manifest.json,
contracts/facade.md) is the assessment and the contract; this spec is the
spec-kit artifact that work was always heading toward.

**Input**: the verified facade contract (`contracts/facade.md`, verified
2026-08-07 against the source SDK's `lib/vendure.dart`), the schema provenance
manifest (`entity-manifest.json`, 179 concrete entities extracted from the
Vendure shop-api schema), and the toolchain capability research
(`research.md`). The contract below is self-contained; where it and the
source SDK disagree, the facade contract wins.

## User Scenarios & Testing *(mandatory)*

### User Story 1 - Initialize the SDK against a Vendure channel (Priority: P1)

A Flutter app connects to a Vendure shop. It calls one of the five facade
initializers (`initialize`, `initializeWithNativeAuth`,
`initializeWithFirebaseAuth`, `initializeWithCustomAuth`, `initializeWithApiKey`)
with an endpoint and channel/language context, and gets back a `Vendure`
instance bound to that channel. Re-initializing replaces the singleton;
`destroy()` releases it.

**Why this priority**: nothing else works without an authenticated, channel-bound
client; the five init variants are the SDK's entire entry surface.

**Independent Test**: script the datasource seam (no live server); each
initializer resolves a `Vendure` whose runtime setters (`setAuthToken`,
`setLanguageCode`, `setChannelToken`, `setApiKey`) are reflected in the
subsequent outbound request headers/variables; `destroy` clears the singleton.

**Acceptance Scenarios**:

1. **Given** an endpoint and channel context, **When** `initialize` is called,
   **Then** a `Vendure` instance resolves and `Vendure.instance` returns it
   **Type**: acceptance
2. **Given** native credentials, **When** `initializeWithNativeAuth` runs, **Then**
   the authenticate mutation is sent and the token is stored before the
   instance resolves **Type**: acceptance
3. **Given** `setLanguageCode`/`setChannelToken`/`setApiKey` after init, **When**
   the next operation executes, **Then** the outbound request carries the new
   `languageCode`/`channelToken`/API-key header **Type**: acceptance
4. **Given** an initialized SDK, **When** `destroy` is called, **Then** the
   singleton and HTTP client are released and a fresh `initialize` is required
   **Type**: acceptance

---

### User Story 2 - The six operation groups behind one facade (Priority: P1)

The app runs commerce operations through the facade's operation groups —
`order`, `auth`, `custom`, `customer`, `catalog`, `system` — each exposing the
methods pinned in the facade contract. Every method is a thin, typed seam over
the datasource: it builds the GraphQL document from the schema manifest, sends
it through the datasource port, and decodes the zorphy entity result.

**Why this priority**: the operation groups ARE the package; the facade contract
enumerates them method-by-method and the README verification (T041) pinned them.

**Independent Test**: a scripted datasource records the documents/variables of
every call and returns canned entity JSON; each operation group's methods are
asserted to send the right document and decode the right entity.

**Acceptance Scenarios**:

1. **Given** an initialized `Vendure`, **When** `order.addItemToOrder` is called,
   **Then** the datasource receives the `addItemToOrder` mutation with the
   product variant id and quantity, and the result decodes to an `Order` entity
   **Type**: acceptance
2. **Given** the catalog group, **When** `search` is called with a term, **Then**
   the `search` query is sent and the result decodes to a `SearchResult` entity
   **Type**: acceptance
3. **Given** the custom group, **When** `query`/`mutate`/`queryList`/`mutateList`
   are called with a raw document, **Then** the datasource executes it verbatim
   (the escape hatch the contract pins) **Type**: acceptance
4. **Given** the auth group, **When** `authenticate` succeeds, **Then** the token
   is persisted via the token datasource and subsequent calls carry it **Type**:
   acceptance

---

### User Story 3 - The entity layer is generated, not written (Priority: P1)

All 179 schema entities in the manifest exist as zorphy entities
(`@Zorphy(generateJson: true)`, immutable, JSON round-trips) under
`lib/src/domain/entities/`, with the 11 Vendure enums and the `SearchResultPrice`
union alongside. The generator output (`.zorphy.dart`, `.g.dart`) is never
hand-edited; regenerating reproduces it byte-for-byte.

**Why this priority**: the entity vocabulary is the wire contract with Vendure;
hand-writing 179 classes is how drift enters. The manifest is the single source.

**Independent Test**: `zfa build` regenerates cleanly; a JSON round-trip test
over a sample of entities (Address, Order, Product, SearchResult) asserts
field-for-field fidelity including nullable custom fields.

**Acceptance Scenarios**:

1. **Given** the manifest, **When** the entity layer is generated, **Then** all
   179 entities exist with their manifest fields, types, and requiredness
   **Type**: acceptance
2. **Given** an entity instance, **When** it is JSON-encoded and decoded, **Then**
   the result equals the original (round-trip) **Type**: acceptance
3. **Given** a zorphy entity and its generated files, **When** the generator is
   re-run, **Then** the output is unchanged (idempotent) **Type**: acceptance

---

### User Story 4 - Pure-Dart testability with no live server (Priority: P1)

Every seam is scripted: the datasource port has an in-memory adapter (like the
fleet's `InMemoryShareIntentAdapter`) so package and app tests assert documents,
variables, headers, and decoded entities in pure Dart, with no Vendure server,
no network, and no platform channel.

**Why this priority**: the source SDK's tests hit a live sandbox
(`localhost:3000`); that is exactly the fleet's anti-pattern. The reimplementation
must be assertable offline — the whole point of the zfa port/adapter architecture.

**Independent Test**: the suite runs with `dart test -j 2` on a disconnected
machine; every operation-group method has a scripted-datasource test.

**Acceptance Scenarios**:

1. **Given** the in-memory datasource adapter, **When** an operation method
   runs, **Then** the recorded request (document, variables, headers) is
   assertable and the canned entity decodes **Type**: acceptance
2. **Given** a scripted datasource failure, **When** an operation method runs,
   **Then** the error surfaces through the port's typed-error path — no
   exception escapes the facade **Type**: acceptance
3. **Given** no network, **When** the suite runs, **Then** every test passes
   **Type**: acceptance

---

### User Story 5 - Publishable as `vendure` at the fleet version (Priority: P1)

The package publishes to pub.dev under the name **`vendure`** (the name
consumers already depend on — the repo is `zuraffa_vendure`, the package stays
`vendure`), at the fleet mono version **7.3.2**, resolving the whole graph from
hosted packages, with the README install guide at the same version.

**Why this priority**: the migration path for existing `vendure` consumers is
the point of the exercise — same name, same facade, new internals.

**Independent Test**: `dart pub publish --dry-run` passes with zero errors;
a throwaway consumer resolves `vendure: ^7.3.2` hosted.

**Acceptance Scenarios**:

1. **Given** the package, **When** the dry-run runs, **Then** validation reports
   zero errors **Type**: acceptance
2. **Given** pub.dev, **When** the consumer probe resolves `vendure: ^7.3.2`,
   **Then** it resolves hosted with no path sources **Type**: acceptance
3. **Given** the README, **When** read, **Then** the install snippet names
   `vendure: ^7.3.2` and the facade usage matches the implementation **Type**:
   acceptance

---

## Requirements

- **FR-001** — Package identity: name `vendure`, mono version `7.3.2` (fleet
  policy, PUBLISH.md); repository `arrrrny/zuraffa_vendure`.
- **FR-002** — Facade `Vendure` with the five initializers and the runtime
  setters/destroy pinned in `contracts/facade.md`, delegating to the operation
  groups. No second facade.
- **FR-003** — Six operation groups (`order`, `auth`, `custom`, `customer`,
  `catalog`, `system`) exposing exactly the facade contract's methods; each
  method is document-build → datasource-send → entity-decode.
- **FR-004** — 179 zorphy entities generated from `entity-manifest.json`
  (fields, types, nullability, requiredness, cross-refs), plus the 11 Vendure
  enums and the `SearchResultPrice` sealed union, under
  `lib/src/domain/entities/`.
- **FR-005** — The datasource seam: a `VendureDatasourcePort` (send a
  GraphQL document with variables and headers, decode a typed result) with
  (a) the GraphQL adapter over the Vendure shop-api (the real driver) and
  (b) a pure-Dart in-memory adapter for tests/dev. The adapter owns the HTTP
  transport; the port owns the contract.
- **FR-006** — Token/session persistence through a token datasource seam
  (in-memory default; the app supplies the durable one), mirroring the fleet's
  port/adapter pattern.
- **FR-007** — DI: `registerVendureDependencies(getIt)` binds the ports to the
  real adapters as lazy singletons; direct construction binds the in-memory
  adapters (the fleet's construction pattern).
- **FR-008** — Error contract: datasource/transport failures and Vendure
  `ErrorCode` payloads resolve to the port's typed error path; no exception
  escapes the facade (one error path for callers).
- **FR-009** — Enum wire fidelity: the 11 enums carry their `@JsonValue` wire
  names (`de_AT`, `ASC`, …) so GraphQL round-trips preserve the schema's
  vocabulary; the declaration order is the wire vocabulary.
- **FR-010** — Custom fields: `Map<String, dynamic>? customFields` on every
  entity that carries them (the manifest pins 47 such fields), passed through
  verbatim — no schema validation client-side.
- **FR-011** — Generated code is never hand-edited (`.zorphy.dart`, `.g.dart`);
  `zfa build` regenerates it. If generated output is wrong, the fix is upstream
  in zorphy (our package), not a patch here.
- **FR-012** — Test coverage: the in-memory datasource adapter fully; every
  operation-group method asserted for document + variables + headers + decode;
  the GraphQL adapter as far as testable without a live server (document
  construction, header assembly, error mapping). `dart test -j 2`;
  `dart analyze` clean; `dart format` clean.
- **FR-013** — README documents the facade usage (the contract's method list),
  the platform matrix (pure Dart — any Flutter host), and the install snippet at
  `vendure: ^7.3.2`.
- **FR-014** — Release only via the fleet mono bump (`../zuraffa/scripts/
  update_fleet.sh`) with the README install guide updated in the same change —
  never out of family (mono version policy, PUBLISH.md).

## Layer Contracts

- **domain/entities/** — zorphy entities (generated) + the 11 enums +
  `SearchResultPrice`. No logic.
- **domain/ports/** — `VendureDatasourcePort` (send/decode contract),
  the token datasource port, and the operation-group interfaces the facade
  delegates to.
- **data/** — the in-memory adapters (test/dev) and the GraphQL adapter
  (the real HTTP transport, `graphql` client or raw `http` — the plan phase
  decision, recorded here: the source SDK's `graphql` client is retained as
  an internal implementation detail, matching the share_plus precedent in
  zuraffa_intents).
- ** facade** — `Vendure` (the `vendure.dart` barrel re-exports it): the five
  initializers, the runtime setters, the six operation groups.

## Key Entities

- `Vendure` — the facade singleton (`Vendure.instance`), constructed by the
  five initializers.
- `VendureDatasourcePort` — send(document, variables, headers) → decoded result;
  the single seam every operation rides.
- The 179 manifest entities — `Address`, `Order`, `Product`, `SearchResult`,
  … (see `entity-manifest.json`; the manifest is the source of truth for fields).
- The 11 enums — `CurrencyCode`, `LanguageCode`, `SortOrder`, `ErrorCode`,
  `LogicalOperator`, `Permission`, `DeletionResult`, `AdjustmentType`,
  `AssetType`, `OrderType`, `HistoryEntryType`.
- `SearchResultPrice` — the sealed `PriceRange | SinglePrice` union.

## Lanes

- **TDD**: entity round-trips (US3) → in-memory datasource recording (US4) →
  operation-group document/decode assertions (US2) → facade init/setters/destroy
  (US1) → publish dry-run (US5).
- **Generated-code gate**: `zfa build` idempotence (US3 AC-3) is a suite test,
  not a review habit.

## Evidence chain

- Prior work (assessment): `research.md` (zfa toolchain capabilities + Vendure
  schema analysis), `entity-manifest.json` (179 entities, field-for-field),
  `contracts/facade.md` (the verified public API).
- Source of truth for behavior: the published `vendure` 3.0.1 SDK's facade
  (`lib/vendure.dart` in vendure-flutter-sdk).
- This spec was authored from the prior work (the speckit specify/plan/tasks
  extensions are not installed in the implementing environment; the research +
  contract + manifest ARE the specification).
