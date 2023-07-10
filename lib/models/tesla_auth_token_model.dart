/// Represents an access token returned from the Tesla API.
class TeslaAuthToken {
  final String accessToken;
  final String tokenType;
  final int expiresIn;
  final String refreshToken;
  final int createdAt;

  /// Creates a new [TeslaAuthToken] with the given values.
  TeslaAuthToken({
    required this.accessToken,
    required this.tokenType,
    required this.expiresIn,
    required this.refreshToken,
    required this.createdAt,
  });

  /// Creates a new [TeslaAuthToken] from a JSON object.
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
