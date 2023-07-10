import 'dart:convert';

import 'package:dio/dio.dart';

class User {
  final String _token;
  User(this._token);
  final Dio _dio = Dio();

  /// Fetches Powerwall order entry data for a user.
  ///
  /// Returns a `Response` object containing the data.
  /// Throws a `DioError` if the request fails.
  Future<Response> getPowerwallOrderEntryData() async {
    try {
      final response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/users/powerwall_order_entry_data',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.data);
      } else {
        throw Exception('Failed to fetch Powerwall Order Entry Data');
      }
    } catch (e) {
      throw Exception('Failed to fetch Powerwall Order Entry Data: $e');
    }
  }

  /// Fetches onboarding data for a user.
  ///
  /// Returns a `Response` object containing the data.
  /// Throws a `DioError` if the request fails.
  Future<Response> getOnboardingData() async {
    try {
      final response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/users/onboarding_data',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.data);
      } else {
        throw Exception('Failed to fetch Onboarding Data');
      }
    } catch (e) {
      throw Exception('Failed to fetch Onboarding Data: $e');
    }
  }

  /// Fetches referral data for a user.
  ///
  /// Returns a `Response` object containing the data.
  /// Throws a `DioError` if the request fails.
  Future<Response> getReferralData() async {
    try {
      final response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/users/referral_data',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.data);
      } else {
        throw Exception('Failed to fetch Referral Data');
      }
    } catch (e) {
      throw Exception('Failed to fetch Referral Data: $e');
    }
  }

  /// Sends a device key.
  ///
  /// [deviceKey] is the device key to be sent.
  /// Returns a `Response` object containing the data.
  /// Throws a `DioError` if the request fails.
  Future<Response> sendDeviceKey(String deviceKey) async {
    try {
      final data = {
        'device_key': deviceKey,
      };

      final response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/users/keys',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
        data: data,
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.data);
      } else {
        throw Exception('Failed to send Device Key');
      }
    } catch (e) {
      throw Exception('Failed to send Device Key: $e');
    }
  }

  /// Sends a command token.
  ///
  /// [commandToken] is the command token to be sent.
  /// Returns a `Response` object containing the data.
  /// Throws a `DioError` if the request fails.
  Future<Response> sendCommandToken(String commandToken) async {
    try {
      final data = {
        'command_token': commandToken,
      };

      final response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/users/keys',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
        data: data,
      );
      if (response.statusCode == 200) {
        return jsonDecode(response.data);
      } else {
        throw Exception('Failed to send Command Token');
      }
    } catch (e) {
      throw Exception('Failed to send Command Token: $e');
    }
  }
}
