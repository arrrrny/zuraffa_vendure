import 'package:vendure/vendure.dart';
import 'package:test/test.dart';

void main() {
  test('the public barrel compiles and names the facade', () {
    expect(() => Vendure.instance, throwsA(isA<StateError>()));
    expect(VendureUtils.convertQueryEnums, isTrue);
    expect(OperationType.mutation, isA<OperationType>());
  });
}
