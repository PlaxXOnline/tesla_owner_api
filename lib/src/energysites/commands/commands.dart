import 'package:dio/dio.dart';

class Commands {
  final String _token;
  Commands(this._token);

  final Dio _dio = Dio();

  /// Sets the backup energy reserve for a specific energy site.
  ///
  /// This asynchronous method makes a POST request to the Tesla API, aiming to
  /// set the backup energy reserve for a specific energy site identified by the [siteId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the result of the request if the request is successful.
  ///
  /// [siteId] is the identifier of the site for which the backup energy reserve is to be set.
  /// you can get [siteId] from the products list.
  ///
  /// **Note:** The specifics of the request body and the response for this endpoint
  /// have not been fully discovered or documented as of now. This function's behavior
  /// may change when more information becomes available.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var reserveResult = await backupEnergyReserve(siteId);
  /// ```
  Future<Response> backupEnergyReserve(int siteId) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/energy_sites/$siteId/backup',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Failed to backup energy reserve');
      }
    } catch (e) {
      throw Exception('Failed to backup energy reserve: $e');
    }
  }

  /// Fetches the site name for a specific energy site.
  ///
  /// This asynchronous method makes a POST request to the Tesla API, retrieving
  /// the site name for a specific energy site based on the [siteId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the site name if the request is successful.
  ///
  /// [siteId] is the identifier of the site for which the site name is to be fetched.
  /// you can get [siteId] from the products list.
  ///
  /// **Note:** The specifics of the request body and the response for this endpoint
  /// have not been fully discovered or documented as of now. This function's behavior
  /// may change when more information becomes available.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var siteName = await siteName(siteId);
  /// ```
  Future<Response> siteName(int siteId) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/energy_sites/$siteId/site_name',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Failed to get site name');
      }
    } catch (e) {
      throw Exception('Failed to get site name: $e');
    }
  }

  /// Fetches the operation mode for a specific site.
  ///
  /// This asynchronous method makes a POST request to the Tesla API, retrieving
  /// the operation mode for a specific site based on the [siteId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the operation mode if the request is successful.
  ///
  /// [siteId] is the identifier of the site for which the operation mode is to be fetched.
  /// you can get [siteId] from the products list.
  ///
  /// **Note:** The specifics of the request body and the response for this endpoint
  /// have not been fully discovered or documented as of now. This function's behavior
  /// may change when more information becomes available.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var operationMode = await operationMode(siteId);
  /// ```
  Future<Response> operationMode(int siteId) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/energy_sites/$siteId/operation',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Failed to get operation mode');
      }
    } catch (e) {
      throw Exception('Failed to get operation mode: $e');
    }
  }

  /// Fetches the time of use settings for a specific site.
  ///
  /// This asynchronous method makes a POST request to the Tesla API, retrieving
  /// the time of use settings for a specific site based on the [siteId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the time of use settings if the request is successful.
  ///
  /// [siteId] is the identifier of the site for which the time of use settings are to be fetched.
  /// you can get [siteId] from the products list.
  ///
  /// **Note:** The specifics of the request body and the response for this endpoint
  /// have not been fully discovered or documented as of now. This function's behavior
  /// may change when more information becomes available.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var timeOfUseSettings = await timeOfUseSettings(siteId);
  /// ```
  Future<Response> timeOfUseSettings(int siteId) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/energy_sites/$siteId/time_of_use_settings',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Failed to get Time of Use Settings');
      }
    } catch (e) {
      throw Exception('Failed to get Time of Use Settings: $e');
    }
  }

  /// Fetches the storm mode for a specific site.
  ///
  /// This asynchronous method makes a POST request to the Tesla API, retrieving
  /// the storm mode for a specific site based on the [siteId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the storm mode status if the request is successful.
  ///
  /// [siteId] is the identifier of the site for which the storm mode status is to be fetched.
  /// you can get [siteId] from the products list.
  ///
  /// **Note:** The specifics of the request body and the response for this endpoint
  /// have not been fully discovered or documented as of now. This function's behavior
  /// may change when more information becomes available.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var stormMode = await stormMode(siteId);
  /// ```
  Future<Response> stormMode(int siteId) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/energy_sites/$siteId/storm_mode',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response;
      } else {
        throw Exception('Failed to get storm mode');
      }
    } catch (e) {
      throw Exception('Failed to get storm mode: $e');
    }
  }
}
