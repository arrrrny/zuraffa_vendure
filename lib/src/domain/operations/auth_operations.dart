import 'package:zuraffa/zuraffa.dart' hide Success, Failure;

import '../entities/exports.dart';
import '../../vendure/token_manager.dart';
import '../repositories/auth_repository.dart';
import '../usecases/auth/authenticate_firebase_usecase.dart';
import '../usecases/auth/authenticate_usecase.dart';
import '../usecases/auth/get_token_firebase_usecase.dart';
import '../usecases/auth/get_token_usecase.dart';
import '../usecases/auth/login_usecase.dart';
import '../usecases/auth/logout_usecase.dart';
import '../usecases/auth/refresh_customer_verification_usecase.dart';
import '../usecases/auth/register_customer_account_usecase.dart';
import '../usecases/auth/request_password_reset_usecase.dart';
import '../usecases/auth/request_update_customer_email_address_usecase.dart';
import '../usecases/auth/reset_password_usecase.dart';
import '../usecases/auth/update_customer_email_address_usecase.dart';
import '../usecases/auth/update_customer_password_usecase.dart';
import '../usecases/auth/verify_customer_account_usecase.dart';

/// Authentication operations backed by the clean-architecture stack —
/// [AuthRepository] + the auth use cases (spec 001: the source SDK's
/// `AuthOperations` re-shape; the old group built the stack itself from a
/// bare GraphQLClient, the facade now wires it once).
///
/// The use cases return zuraffa [Result]s; the facade's contract is the
/// source SDK's `Future<T>` — so each method unwraps: success yields the
/// value, failure rethrows the underlying error (one error path, the
/// datasource's).
class AuthOperations {
  AuthOperations(this._repository);

  final AuthRepository _repository;

  Future<AuthenticationResult> authenticate({
    required String username,
    required String password,
  }) async {
    final result = await AuthenticateUseCase(_repository)(
      AuthenticateParams(username: username, password: password),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  Future<AuthenticationResult> authenticateFirebase({
    required String uid,
    required String jwt,
  }) async {
    final result = await AuthenticateFirebaseUseCase(_repository)(
      AuthenticateFirebaseParams(uid: uid, jwt: jwt),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  Future<String?> getToken({
    required String username,
    required String password,
    String tokenName = 'vendure-auth-token',
  }) async {
    final result = await GetTokenUseCase(_repository)(
      GetTokenParams(
        username: username,
        password: password,
        tokenName: tokenName,
      ),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  Future<String?> getTokenFirebase({
    required String uid,
    required String jwt,
    String tokenName = 'vendure-auth-token',
  }) async {
    final result = await GetTokenFirebaseUseCase(_repository)(
      GetTokenFirebaseParams(uid: uid, jwt: jwt, tokenName: tokenName),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  TokenFetcher get getTokenFetcher => (params) {
    return getToken(
      username: params['username'],
      password: params['password'],
      tokenName: params['tokenName'] ?? 'vendure-auth-token',
    );
  };

  TokenFetcher get getTokenFirebaseFetcher => (params) {
    return getTokenFirebase(
      uid: params['uid'],
      jwt: params['jwt'],
      tokenName: params['tokenName'] ?? 'vendure-auth-token',
    );
  };

  Future<NativeAuthenticationResult> login({
    required String username,
    required String password,
    bool? rememberMe,
  }) async {
    final result = await LoginUseCase(_repository)(
      LoginParams(
        username: username,
        password: password,
        rememberMe: rememberMe,
      ),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  Future<Success> logout() async {
    final result = await LogoutUseCase(_repository)(const NoParams());
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  Future<RegisterCustomerAccountResult> registerCustomerAccount({
    required RegisterCustomerInput input,
  }) async {
    final result = await RegisterCustomerAccountUseCase(_repository)(
      RegisterCustomerAccountParams(input: input),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  Future<RefreshCustomerVerificationResult> refreshCustomerVerification({
    required String emailAddress,
  }) async {
    final result = await RefreshCustomerVerificationUseCase(_repository)(
      RefreshCustomerVerificationParams(emailAddress: emailAddress),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  Future<VerifyCustomerAccountResult> verifyCustomerAccount({
    required String token,
    String? password,
  }) async {
    final result = await VerifyCustomerAccountUseCase(_repository)(
      VerifyCustomerAccountParams(token: token, password: password),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  Future<UpdateCustomerPasswordResult> updateCustomerPassword({
    required String currentPassword,
    required String newPassword,
  }) async {
    final result = await UpdateCustomerPasswordUseCase(_repository)(
      UpdateCustomerPasswordParams(
        currentPassword: currentPassword,
        newPassword: newPassword,
      ),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  Future<RequestUpdateCustomerEmailAddressResult>
  requestUpdateCustomerEmailAddress({
    required String password,
    required String newEmailAddress,
  }) async {
    final result = await RequestUpdateCustomerEmailAddressUseCase(_repository)(
      RequestUpdateCustomerEmailAddressParams(
        password: password,
        newEmailAddress: newEmailAddress,
      ),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  Future<UpdateCustomerEmailAddressResult> updateCustomerEmailAddress({
    required String token,
  }) async {
    final result = await UpdateCustomerEmailAddressUseCase(_repository)(
      UpdateCustomerEmailAddressParams(token: token),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  Future<RequestPasswordResetResult> requestPasswordReset({
    required String emailAddress,
  }) async {
    final result = await RequestPasswordResetUseCase(_repository)(
      RequestPasswordResetParams(emailAddress: emailAddress),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }

  Future<ResetPasswordResult> resetPassword({
    required String token,
    required String password,
  }) async {
    final result = await ResetPasswordUseCase(_repository)(
      ResetPasswordParams(token: token, password: password),
    );
    return result.fold(
      (value) => value,
      (failure) => throw failure.cause ?? Exception(failure.message),
    );
  }
}
