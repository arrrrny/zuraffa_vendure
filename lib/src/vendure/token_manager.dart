typedef TokenFetcher = Future<String?> Function(Map<String, dynamic> params);

/// Token lifecycle: the session token, its expiry, and the optional
/// fetch-refresh closure the facade wires for re-initialization
/// (ported from the source SDK's `TokenManager`).
class TokenManager {
  String? _token;
  DateTime? _expiryDate;
  final TokenFetcher? fetchToken;
  final Map<String, dynamic>? params;
  final Duration sessionDuration;

  /// Directly call the configured [fetchToken] with custom [params].
  /// Throws if no fetcher is configured.
  Future<void> refreshToken(Map<String, dynamic> params) async {
    try {
      if (fetchToken == null) {
        throw Exception('No TokenFetcher configured.');
      }
      final token = await fetchToken!(params);
      if (token == null) {
        throw Exception(
          'TokenFetcher returned null. Failed to refresh token. Params: $params',
        );
      }
      setToken(token);
    } catch (e) {
      rethrow;
    }
  }

  TokenManager({
    this.fetchToken,
    this.params,
    this.sessionDuration = const Duration(days: 365),
  });

  void setToken(String token) {
    _token = token;
    _expiryDate = DateTime.now().add(sessionDuration);
  }

  String? get token => _token;

  Future<String?> getValidToken() async {
    if (_token == null ||
        _expiryDate == null ||
        _expiryDate!.isBefore(DateTime.now())) {
      final fetcher = fetchToken;
      if (fetcher != null && params != null) {
        _token = await fetcher(params!);
        _expiryDate = DateTime.now().add(sessionDuration);
      } else {
        return null;
      }
    }
    return _token;
  }
}
