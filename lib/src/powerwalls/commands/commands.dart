import 'package:dio/dio.dart';

class Commands {
  final String _token;
  Commands(this._token);

  final Dio _dio = Dio();

  /// Fetches the backup reserve information for a specific battery.
  ///
  /// This asynchronous method makes a POST request to the Tesla API, retrieving
  /// the backup reserve information for a specific battery based on the [batteryId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the backup reserve data if the request is successful.
  ///
  /// [batteryId] is the identifier of the battery for which the backup reserve information is to be fetched.
  /// you can get [batteryId] from the products list.
  ///
  /// **Note:** The specifics of the request body and the response for this endpoint
  /// have not been fully discovered or documented as of now. This function's behavior
  /// may change when more information becomes available.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var backupBatteryReserve = await backupBatteryReserve(batteryId);
  /// ```
  Future<Response> backupBatteryReserve(int batteryId) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/powerwalls/$batteryId/backup',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to backup battery reserve');
      }
    } catch (e) {
      throw Exception('Failed to backup battery reserve: $e');
    }
  }

  /// Fetches the site name of a specific battery.
  ///
  /// This asynchronous method makes a POST request to the Tesla API, retrieving
  /// the site name for a specific battery based on the [batteryId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the site name data if the request is successful.
  ///
  /// [batteryId] is the identifier of the battery for which the site name is to be fetched.
  /// you can get [batteryId] from the products list.
  ///
  /// **Note:** The specifics of the request body and the response for this endpoint
  /// have not been fully discovered or documented as of now. This function's behavior
  /// may change when more information becomes available.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var batterySiteName = await batterySiteName(batteryId);
  /// ```
  Future<Response> batterySiteName(int batteryId) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/powerwalls/$batteryId/site_name',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to battery site name');
      }
    } catch (e) {
      throw Exception('Failed to battery site name: $e');
    }
  }

  /// Fetches the operation mode of a specific battery.
  ///
  /// This asynchronous method makes a POST request to the Tesla API, retrieving
  /// the operation mode for a specific battery based on the [batteryId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the operation mode data if the request is successful.
  ///
  /// [batteryId] is the identifier of the battery for which the operation mode is to be fetched.
  /// you can get [batteryId] from the products list.
  ///
  /// **Note:** The specifics of the request body and the response for this endpoint
  /// have not been fully discovered or documented as of now. This function's behavior
  /// may change when more information becomes available.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var batteryOperationMode = await batteryOperationMode(batteryId);
  /// ```
  Future<Response> batteryOperationMode(int batteryId) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/powerwalls/$batteryId/operation',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to battery operation mode');
      }
    } catch (e) {
      throw Exception('Failed to battery operation mode: $e');
    }
  }
}
