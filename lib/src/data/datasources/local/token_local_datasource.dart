import '../../../vendure/token_manager.dart';

/// The local token seam — the default wraps [TokenManager] (in-memory);
/// the app supplies the durable adapter (spec 001 FR-006).
class TokenLocalDataSource {
  final TokenManager _tokenManager;

  /// Wraps a [TokenManager] instance.
  TokenLocalDataSource(TokenManager tokenManager)
    : _tokenManager = tokenManager;

  /// Returns the current token, or `null` if none is set.
  String? get token => _tokenManager.token;

  /// Sets the token and updates the expiry date based on the configured
  /// session duration.
  void setToken(String token) {
    _tokenManager.setToken(token);
  }

  /// Returns a valid (non-expired) token, refreshing it via the
  /// configured [TokenFetcher] if necessary.
  ///
  /// Returns `null` if no token is available and no fetcher is configured.
  Future<String?> getValidToken() async {
    return _tokenManager.getValidToken();
  }

  /// Directly calls the configured [TokenFetcher] with the given [params]
  /// to refresh the token. Throws if no [TokenFetcher] is configured.
  Future<void> refreshToken(Map<String, dynamic> params) async {
    await _tokenManager.refreshToken(params);
  }

  /// Exposes the underlying [TokenManager] for advanced callers that need
  /// direct access (e.g., constructing a [TokenFetcher] closure).
  ///
  /// FLAG: Direct access to [TokenManager] — use sparingly.
  TokenManager get rawTokenManager => _tokenManager;
}
