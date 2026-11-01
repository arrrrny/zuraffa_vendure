// Vendure-specific repository implementation (T035)
// Delegates to [VendureDataSource] with per-method GraphQL docs,
// variables, fromJson, and expectedDataType.

import '../../domain/datasources/vendure_datasource.dart';
import '../../domain/repositories/customer_repository.dart';

import 'package:vendure/src/mutations/create_customer_address_mutation.dart';
import 'package:vendure/src/mutations/delete_customer_address_mutation.dart';
import 'package:vendure/src/mutations/update_customer_address_mutation.dart';
import 'package:vendure/src/mutations/update_customer_mutation.dart';
import 'package:vendure/src/queries/get_active_channel_query.dart';
import 'package:vendure/src/queries/get_active_customer_query.dart';
import 'package:vendure/src/queries/get_current_user_query.dart';

import '../../domain/entities/exports.dart';

class DataCustomerRepository implements CustomerRepository {
  final VendureDataSource _dataSource;

  DataCustomerRepository({required this._dataSource});

  @override
  Future<Customer?> getActiveCustomer() {
    return _dataSource.query<Customer?>(
      getActiveCustomerQuery,
      variables: {},
      headers: const {},
      fromJson: Customer.fromJson,
      expectedDataType: 'activeCustomer',
    );
  }

  @override
  Future<CurrentUser?> getCurrentUser() {
    return _dataSource.query<CurrentUser?>(
      getCurrentUserQuery,
      variables: {},
      headers: const {},
      fromJson: CurrentUser.fromJson,
      expectedDataType: 'me',
    );
  }

  @override
  Future<Channel> getActiveChannel() {
    return _dataSource.query<Channel>(
      getActiveChannelQuery,
      variables: {},
      headers: const {},
      fromJson: Channel.fromJson,
      expectedDataType: 'activeChannel',
    );
  }

  @override
  Future<Customer> updateCustomer({required UpdateCustomerInput input}) {
    return _dataSource.mutate<Customer>(
      updateCustomerMutation,
      variables: {'input': input.toJson()},
      headers: const {},
      fromJson: Customer.fromJson,
      expectedDataType: 'updateCustomer',
    );
  }

  @override
  Future<Address> createCustomerAddress({required CreateAddressInput input}) {
    return _dataSource.mutate<Address>(
      createCustomerAddressMutation,
      variables: {'input': input.toJson()},
      headers: const {},
      fromJson: Address.fromJson,
      expectedDataType: 'createCustomerAddress',
    );
  }

  @override
  Future<Address> updateCustomerAddress({required UpdateAddressInput input}) {
    return _dataSource.mutate<Address>(
      updateCustomerAddressMutation,
      variables: {'input': input.toJson()},
      headers: const {},
      fromJson: Address.fromJson,
      expectedDataType: 'updateCustomerAddress',
    );
  }

  @override
  Future<Success> deleteCustomerAddress({required String id}) {
    return _dataSource.mutate<Success>(
      deleteCustomerAddressMutation,
      variables: {'id': id},
      headers: const {},
      fromJson: Success.fromJson,
      expectedDataType: 'deleteCustomerAddress',
    );
  }
}
