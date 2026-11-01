import '../../domain/datasources/vendure_datasource.dart';
import '../../domain/repositories/auth_repository.dart';
import '../../domain/entities/exports.dart';
import '../../data/datasources/local/token_local_datasource.dart';
import '../../vendure/auth_error_classifier.dart';
import '../../vendure/token_manager.dart';

import 'package:vendure/src/mutations/authenticate_mutation.dart';
import 'package:vendure/src/mutations/firebase_auth_mutation.dart';
import 'package:vendure/src/mutations/login_mutation.dart';
import 'package:vendure/src/mutations/logout_mutation.dart';
import 'package:vendure/src/mutations/refresh_customer_verification_mutation.dart';
import 'package:vendure/src/mutations/register_customer_account_mutation.dart';
import 'package:vendure/src/mutations/request_password_reset_mutation.dart';
import 'package:vendure/src/mutations/request_update_customer_email_address.dart';
import 'package:vendure/src/mutations/reset_password_mutation.dart';
import 'package:vendure/src/mutations/update_customer_email_address_mutation.dart';
import 'package:vendure/src/mutations/update_customer_password_mutation.dart';
import 'package:vendure/src/mutations/verify_customer_account_mutation.dart';

/// Data-layer implementation of [AuthRepository].
///
/// The auth pipeline's two special behaviors are preserved from the source
/// SDK: the credential-error classifier (an error payload whose message
/// reads as an authentication failure surfaces as `Invalid credentials: …`)
/// and the token extraction — the Vendure session token rides the
/// `vendure-auth-token` HTTP response HEADER, so [getToken]/
/// [getTokenFirebase] execute through [VendureDataSource.mutateWithHeaders]
/// and persist the captured token via the token local datasource.
class DataAuthRepository implements AuthRepository {
  DataAuthRepository({
    required this.dataSource,
    TokenLocalDataSource? tokenLocalDataSource,
  }) : _tokenLocalDataSource =
           tokenLocalDataSource ?? TokenLocalDataSource(TokenManager());

  final VendureDataSource dataSource;
  final TokenLocalDataSource _tokenLocalDataSource;

  @override
  Future<AuthenticationResult> authenticate({
    required String username,
    required String password,
  }) async {
    try {
      return await dataSource.mutate<AuthenticationResult>(
        authenticateMutation,
        variables: {'username': username, 'password': password},
        headers: const {},
        fromJson: AuthenticationResult.fromJson,
        expectedDataType: 'authenticate',
      );
    } on VendureDataSourceException catch (e) {
      throw _classified(e);
    }
  }

  @override
  Future<AuthenticationResult> authenticateFirebase({
    required String uid,
    required String jwt,
  }) async {
    return dataSource.mutate<AuthenticationResult>(
      firebaseAuthMutation,
      variables: {'uid': uid, 'jwt': jwt},
      headers: const {},
      fromJson: AuthenticationResult.fromJson,
      expectedDataType: 'authenticate',
    );
  }

  @override
  Future<NativeAuthenticationResult> login({
    required String username,
    required String password,
    bool? rememberMe,
  }) async {
    try {
      return await dataSource.mutate<NativeAuthenticationResult>(
        loginMutation,
        variables: {
          'username': username,
          'password': password,
          'rememberMe': rememberMe,
        },
        headers: const {},
        fromJson: NativeAuthenticationResult.fromJson,
        expectedDataType: 'login',
      );
    } on VendureDataSourceException catch (e) {
      throw VendureDataSourceException(
        AuthErrorClassifier.describe(e.message),
        cause: e.cause,
      );
    }
  }

  @override
  Future<Success> logout() {
    return dataSource.mutate<Success>(
      logoutMutation,
      variables: const {},
      headers: const {},
      fromJson: Success.fromJson,
      expectedDataType: 'logout',
    );
  }

  @override
  Future<RegisterCustomerAccountResult> registerCustomerAccount({
    required RegisterCustomerInput input,
  }) {
    return dataSource.mutate<RegisterCustomerAccountResult>(
      registerCustomerAccountMutation,
      variables: {'input': input.toJson()},
      headers: const {},
      fromJson: RegisterCustomerAccountResult.fromJson,
      expectedDataType: 'registerCustomerAccount',
    );
  }

  @override
  Future<RefreshCustomerVerificationResult> refreshCustomerVerification({
    required String emailAddress,
  }) {
    return dataSource.mutate<RefreshCustomerVerificationResult>(
      refreshCustomerVerificationMutation,
      variables: {'emailAddress': emailAddress},
      headers: const {},
      fromJson: RefreshCustomerVerificationResult.fromJson,
      expectedDataType: 'refreshCustomerVerification',
    );
  }

  @override
  Future<VerifyCustomerAccountResult> verifyCustomerAccount({
    required String token,
    String? password,
  }) {
    return dataSource.mutate<VerifyCustomerAccountResult>(
      verifyCustomerAccountMutation,
      variables: {'token': token, 'password': password},
      headers: const {},
      fromJson: VerifyCustomerAccountResult.fromJson,
      expectedDataType: 'verifyCustomerAccount',
    );
  }

  @override
  Future<UpdateCustomerPasswordResult> updateCustomerPassword({
    required String currentPassword,
    required String newPassword,
  }) {
    return dataSource.mutate<UpdateCustomerPasswordResult>(
      updateCustomerPasswordMutation,
      variables: {
        'currentPassword': currentPassword,
        'newPassword': newPassword,
      },
      headers: const {},
      fromJson: UpdateCustomerPasswordResult.fromJson,
      expectedDataType: 'updateCustomerPassword',
    );
  }

  @override
  Future<RequestUpdateCustomerEmailAddressResult>
  requestUpdateCustomerEmailAddress({
    required String password,
    required String newEmailAddress,
  }) {
    return dataSource.mutate<RequestUpdateCustomerEmailAddressResult>(
      requestUpdateCustomerEmailAddressMutation,
      variables: {'password': password, 'newEmailAddress': newEmailAddress},
      headers: const {},
      fromJson: RequestUpdateCustomerEmailAddressResult.fromJson,
      expectedDataType: 'requestUpdateCustomerEmailAddress',
    );
  }

  @override
  Future<UpdateCustomerEmailAddressResult> updateCustomerEmailAddress({
    required String token,
  }) {
    return dataSource.mutate<UpdateCustomerEmailAddressResult>(
      updateCustomerEmailAddressMutation,
      variables: {'token': token},
      headers: const {},
      fromJson: UpdateCustomerEmailAddressResult.fromJson,
      expectedDataType: 'updateCustomerEmailAddress',
    );
  }

  @override
  Future<RequestPasswordResetResult> requestPasswordReset({
    required String emailAddress,
  }) {
    return dataSource.mutate<RequestPasswordResetResult>(
      requestPasswordResetMutation,
      variables: {'emailAddress': emailAddress},
      headers: const {},
      fromJson: RequestPasswordResetResult.fromJson,
      expectedDataType: 'requestPasswordReset',
    );
  }

  @override
  Future<ResetPasswordResult> resetPassword({
    required String token,
    required String password,
  }) {
    return dataSource.mutate<ResetPasswordResult>(
      resetPasswordMutation,
      variables: {'token': token, 'password': password},
      headers: const {},
      fromJson: ResetPasswordResult.fromJson,
      expectedDataType: 'resetPassword',
    );
  }

  @override
  Future<String?> getToken({
    required String username,
    required String password,
    String tokenName = 'vendure-auth-token',
  }) async {
    final response = await dataSource.mutateWithHeaders<AuthenticationResult>(
      authenticateMutation,
      variables: {'username': username, 'password': password},
      headers: const {},
      fromJson: AuthenticationResult.fromJson,
      expectedDataType: 'authenticate',
    );
    final token = response.headers[tokenName];
    if (token != null) {
      _tokenLocalDataSource.setToken(token);
    }
    return token;
  }

  @override
  Future<String?> getTokenFirebase({
    required String uid,
    required String jwt,
    String tokenName = 'vendure-auth-token',
  }) async {
    final response = await dataSource.mutateWithHeaders<AuthenticationResult>(
      firebaseAuthMutation,
      variables: {'uid': uid, 'jwt': jwt},
      headers: const {},
      fromJson: AuthenticationResult.fromJson,
      expectedDataType: 'authenticate',
    );
    final token = response.headers[tokenName];
    if (token != null) {
      _tokenLocalDataSource.setToken(token);
    }
    return token;
  }

  /// The source SDK's auth pipeline classified EVERY auth mutation's error
  /// payload (not just authenticate): an error message reading as an
  /// authentication failure surfaces as `Invalid credentials: …`.
  static VendureDataSourceException _classified(VendureDataSourceException e) =>
      VendureDataSourceException(
        AuthErrorClassifier.describe(e.message),
        cause: e.cause,
      );
}
