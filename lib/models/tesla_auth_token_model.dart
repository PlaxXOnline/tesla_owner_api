/// Represents an access token returned from the Tesla API.
///
/// Includes the following fields:
/// * [accessToken]: The token that can be used for accessing Tesla API.
/// * [tokenType]: The type of token, typically "Bearer".
/// * [expiresIn]: The number of seconds the token is valid for since its creation.
/// * [refreshToken]: The token that can be used to refresh the access token after it expires.
/// * [createdAt]: The time at which the token was created, as a Unix timestamp.
class TeslaAuthToken {
  /// Access token for the Tesla API.
  final String accessToken;

  /// Type of the token, typically "Bearer".
  final String tokenType;

  /// Number of seconds the token is valid for since its creation.
  final int expiresIn;

  /// Token that can be used to refresh the access token after it expires.
  final String refreshToken;

  /// Time at which the token was created, as a Unix timestamp.
  final int createdAt;

  /// Creates a new [TeslaAuthToken] with the given values.
  ///
  /// All parameters are required and must not be null.
  TeslaAuthToken({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.refreshToken,
    required this.createdAt,
  });

  /// Creates a new [TeslaAuthToken] from a JSON object.
  ///
  /// Expects the following keys in the map:
  /// 'access_token', 'token_type', 'expires_in', 'refresh_token', 'created_at'.
  factory TeslaAuthToken.fromJson(Map<String, dynamic> json) {
    return TeslaAuthToken(
      accessToken: json['access_token'],
      tokenType: json['token_type'],
      expiresIn: json['expires_in'],
      refreshToken: json['refresh_token'],
      createdAt: json['created_at'],
    );
  }
}
