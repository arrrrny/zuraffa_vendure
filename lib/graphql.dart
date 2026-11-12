/// vendure's transport entrypoint — the GraphQL client library this package
/// is compiled against.
///
/// The client itself is an implementation detail (repositories ride the
/// [VendureDataSource] port and never see it), but its types are on the
/// public surface: [GraphQLVendureDataSource.innerClient] accepts one,
/// and `buildDefaultClient` / `buildSubscriptionClient` return one. A
/// consumer that injects a client therefore has to name the same library
/// vendure resolved — and two same-named classes from different libraries
/// are different types, so guessing the transport package breaks the build.
///
/// Import it from here rather than from the transport package: which fork
/// vendure rides is vendure's decision to move (issue #13 moved it from
/// `package:graphql/client.dart` to `package:graphql_plus/graphql_plus.dart`
/// when the hardened fork was adopted), while this path stays.
library;

export 'package:graphql_plus/graphql_plus.dart';
