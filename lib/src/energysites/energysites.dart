import 'package:dio/dio.dart';

import 'commands/commands.dart';

class EnergySites {
  final String _token;
  late Commands commands;
  EnergySites(this._token) {
    commands = Commands(_token);
  }
  final Dio _dio = Dio();

  /// Fetches the status summary for a specific site.
  ///
  /// This asynchronous method makes a GET request to the Tesla API, retrieving
  /// the status summary for a specific site based on the [siteId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the site status summary if the request is successful.
  ///
  /// [siteId] is the identifier of the site for which the status summary is to be fetched.
  ///
  /// **Note:** The specifics of the request body and the response for this endpoint
  /// have not been fully discovered or documented as of now. This function's behavior
  /// may change when more information becomes available.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var siteStatusSummary = await siteStatusSummary(siteId);
  /// ```
  Future<Response> siteStatusSummary(int siteId) async {
    try {
      var response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/energy_sites/$siteId/site_status',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to get site summary');
      }
    } catch (e) {
      throw Exception('Failed to get site summary: $e');
    }
  }

  /// Fetches the live status data for a specific site.
  ///
  /// This asynchronous method makes a GET request to the Tesla API, retrieving
  /// the live status data for a specific site based on the [siteId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the site live status data if the request is successful.
  ///
  /// [siteId] is the identifier of the site for which the live status data is to be fetched.
  ///
  /// **Note:** The specifics of the request body and the response for this endpoint
  /// have not been fully discovered or documented as of now. This function's behavior
  /// may change when more information becomes available.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var siteLiveStatusData = await siteLiveStatusData(siteId);
  /// ```
  Future<Response> siteLiveStatusData(int siteId) async {
    try {
      var response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/energy_sites/$siteId/live_status',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to get site data');
      }
    } catch (e) {
      throw Exception('Failed to get site data: $e');
    }
  }

  /// Fetches the configuration information for a specific site.
  ///
  /// This asynchronous method makes a GET request to the Tesla API, retrieving
  /// the configuration data for a specific site based on the [siteId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the site configuration data if the request is successful.
  ///
  /// [siteId] is the identifier of the site for which the configuration data is to be fetched.
  ///
  /// **Note:** The specifics of the request body and the response for this endpoint
  /// have not been fully discovered or documented as of now. This function's behavior
  /// may change when more information becomes available.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var siteConfiguration = await siteConfiguration(siteId);
  /// ```
  Future<Response> siteConfiguration(int siteId) async {
    try {
      var response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/energy_sites/$siteId/site_info',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to get site configuration');
      }
    } catch (e) {
      throw Exception('Failed to get site configuration: $e');
    }
  }

  /// Fetches the historical data for a specific site.
  ///
  /// This asynchronous method makes a GET request to the Tesla API, retrieving
  /// the historical data for a specific site based on the [siteId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the site history data if the request is successful.
  ///
  /// [siteId] is the identifier of the site for which the historical data is to be fetched.
  ///
  /// **Note:** The specifics of the request body and the response for this endpoint
  /// have not been fully discovered or documented as of now. This function's behavior
  /// may change when more information becomes available.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var siteHistory = await siteHistory(siteId);
  /// ```
  Future<Response> siteHistory(int siteId) async {
    try {
      var response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/energy_sites/$siteId/history',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to get site history');
      }
    } catch (e) {
      throw Exception('Failed to get site history: $e');
    }
  }
}
