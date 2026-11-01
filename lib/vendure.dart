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
///   languageCode: 'en',
/// );
/// final order = await vendure.order.getActiveOrder();
/// ```
library;

export 'src/data/datasources/graphql/graphql_vendure_datasource.dart';
export 'src/data/datasources/in_memory/in_memory_vendure_datasource.dart';
export 'src/domain/datasources/vendure_datasource.dart';
export 'src/domain/operations/auth_operations.dart';
export 'src/domain/operations/catalog_operations.dart';
export 'src/domain/operations/custom_operations.dart';
export 'src/domain/operations/customer_operations.dart';
export 'src/domain/operations/order_operations.dart';
export 'src/domain/operations/system_operations.dart';
export 'src/domain/entities/exports.dart';
export 'src/domain/repositories/auth_repository.dart';
export 'src/domain/repositories/catalog_repository.dart';
export 'src/domain/repositories/customer_repository.dart';
export 'src/domain/repositories/order_repository.dart';
export 'src/domain/repositories/system_repository.dart';
export 'src/subscriptions/active_customer_stream_subscription.dart';
export 'src/vendure/app_check_provider.dart';
export 'src/vendure/operation_type_enum.dart';
export 'src/vendure/token_manager.dart';
export 'src/vendure/vendure.dart';
export 'src/vendure/vendure_utils.dart';
