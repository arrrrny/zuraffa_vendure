/// The credential-error classifier ported from the source SDK's
/// `AuthBaseOperations`: a Vendure error payload whose message mentions
/// credentials/authentication resolves to `InvalidCredentialsError`
/// semantics for the caller. Pure Dart — the repositories script it.
class AuthErrorClassifier {
  const AuthErrorClassifier();

  /// The source SDK's message vocabulary: invalid / unauthorized /
  /// credentials / authentication.
  static const credentialVocabulary = [
    'invalid',
    'unauthorized',
    'credentials',
    'authentication',
  ];

  /// True when [message] reads as an authentication failure.
  static bool isInvalidCredentials(String? message) {
    if (message == null || message.isEmpty) {
      return false;
    }
    final lowered = message.toLowerCase();
    return credentialVocabulary.any(lowered.contains);
  }

  /// The source SDK's error-message normalization: the vendure-auth-token
  /// flow surfaces `'Invalid credentials: <message>'` for auth failures.
  static String describe(String? message) {
    if (message == null || message.isEmpty) {
      return 'Invalid credentials: No error message returned from server';
    }
    final lowered = message.toLowerCase();
    if (isInvalidCredentials(lowered)) {
      return 'Invalid credentials: $message';
    }
    return message;
  }
}
