import 'dart:convert';
import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:tesla_owner_api/models/tesla_auth_token_model.dart';

class Auth {
  Auth();
  final Dio _dio = Dio();

  /// Authenticates the user with the Tesla API and returns a [TeslaAuthToken].
  ///
  /// [clientId] is the client ID of the Tesla API.
  /// [clientSecret] is the client secret of the Tesla API.
  /// [email] is the user's email address.
  /// [password] is the user's password.
  ///
  /// Throws [DioException] if the request fails.
  ///
  /// Returns: [TeslaAuthToken] on successful authentication.
  Future<TeslaAuthToken> getAccessToken(String email, String password,
      String clientId, String clientSecret) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/oauth/token',
        data: jsonEncode(<String, String>{
          'grant_type': 'password',
          'client_id': clientId,
          'client_secret': clientSecret,
          'email': email,
          'password': password,
        }),
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );

      if (response.statusCode == 200) {
        return TeslaAuthToken.fromJson(response.data);
      } else {
        throw DioException(
            requestOptions: RequestOptions(path: ''),
            error:
                'Failed to authenticate. HTTP status code: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw DioException(
          requestOptions: RequestOptions(path: ''),
          error: 'Failed to authenticate. Dio error: ${e.message}');
    }
  }

  /// Revokes the given access token from the Tesla API.
  ///
  /// [accessToken] is the token to be revoked.
  ///
  /// Throws [DioException] if the request fails.
  Future<void> revokeAccessToken(String accessToken) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/oauth/revoke',
        data: jsonEncode(<String, String>{
          'token': accessToken,
        }),
        options: Options(
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          },
        ),
      );

      if (response.statusCode == 200) {
        log('Token revoked successfully!');
      } else {
        throw DioException(
            requestOptions: RequestOptions(path: ''),
            error:
                'Failed to revoke token. HTTP status code: ${response.statusCode}');
      }
    } on DioException catch (e) {
      throw DioException(
          requestOptions: RequestOptions(path: ''),
          error: 'Failed to revoke token. Dio error: ${e.message}');
    }
  }
}
