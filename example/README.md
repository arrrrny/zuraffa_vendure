# vendure

The Zuraffa reimplementation of the Vendure Flutter SDK — a GraphQL commerce
seam (auth, orders, catalog, customers, system, custom operations) built on the
zfa clean-architecture stack.

## Query the catalog

```dart
import 'package:vendure/vendure.dart';

Future<void> main() async {
  final client = createVendureClient(
    endpoint: 'https://shop.example.com/shop-api',
  );

  final products = await client.catalog.getProducts(
    options: ProductListOptions(slug: 't-shirt'),
  );

  for (final p in products.items) {
    print(p.name);
  }
}
```

## Authenticate a customer

```dart
import 'package:vendure/vendure.dart';

final auth = await client.auth.authenticate(email: 'a@b.com', password: 'secret');
```