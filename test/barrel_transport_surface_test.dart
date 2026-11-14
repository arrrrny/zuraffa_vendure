import 'package:test/test.dart';

// Imports ONLY the documented entrypoint on purpose: the seam this file pins
// is the BARREL's. A second `import 'package:graphql_plus/...'` here would
// hide the very regression it guards. If the barrel ever stops re-exporting
// the transport shim, this file fails to COMPILE with
// `Undefined class 'GraphQLClient'` — the exact consumer failure the review
// of #14 verified by hand (arrrrny/zuraffa_vendure#15).
import 'package:vendure/vendure.dart';

/// Spec `001-vendure-zuraffa-rewrite` — the transport shim's reachability
/// from the package's documented entrypoint. `lib/graphql.dart` exists so a
/// consumer can name the transport types vendure resolved (issue #13 moved
/// them from `package:graphql/client.dart` to `package:graphql_plus`);
/// reachability through the barrel is what makes the seam usable at all,
/// and it was silently absent for one review round (finding 1 of #15).
void main() {
  group('barrel transport surface (issue #15)', () {
    test('GraphQLClient is nameable through package:vendure/vendure.dart', () {
      GraphQLClient? injected;
      expect(injected, isNull);
    });

    test('the innerClient seam keeps its GraphQLClient type', () {
      // Compile-time pin on the constructor signature: the named parameter
      // is the only place a consumer injects a transport client, so its type
      // is the contract the shim exists to stabilise.
      final GraphQLVendureDataSource Function(
        VendureContext,
        {
        GraphQLClient? innerClient,
      }) ctor = GraphQLVendureDataSource.new;
      expect(ctor, isNotNull);
    });
  });
}