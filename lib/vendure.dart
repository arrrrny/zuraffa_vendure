/// vendure — the Zuraffa reimplementation of the Vendure Flutter SDK.
///
/// The GraphQL commerce seam for the Zuraffa ecosystem: authenticate,
/// manage orders, browse the catalog, and run custom operations against a
/// Vendure shop-api — over the registered [VendureDataSource] port, with
/// the schema's 179 entities as zorphy types.
///
/// ```dart
/// final vendure = await Vendure.initialize(
///   endpoint: 'https://shop.example.com/shop-api',
///   languageCode: LanguageCode.en,
/// );
/// final order = await vendure.order.getActiveOrder();
/// ```
library;

export 'src/data/datasources/graphql/graphql_vendure_datasource.dart';
export 'src/data/datasources/in_memory/in_memory_vendure_datasource.dart';
export 'src/domain/datasources/vendure_datasource.dart';
