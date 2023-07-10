import 'package:dio/dio.dart';
import 'package:tesla_owner_api/src/powerwalls/commands/commands.dart';

class PowerWalls {
  final String _token;
  late Commands commands;
  PowerWalls(this._token) {
    commands = Commands(_token);
  }
  final Dio _dio = Dio();

  /// Fetches the status of a specific battery.
  ///
  /// This asynchronous method makes a GET request to the Tesla API, retrieving
  /// the status for a specific battery based on the [batteryId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the battery status data if the request is successful.
  ///
  /// [batteryId] is the identifier of the battery for which status is to be fetched.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var batteryStatus = await getBatteryStatus(batteryId);
  /// ```
  Future<Response> getBatteryStatus(int batteryId) async {
    try {
      final response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/powerwalls/$batteryId/status',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to fetch battery status');
      }
    } catch (e) {
      throw Exception('Failed to fetch battery status: $e');
    }
  }

  /// Fetches the data of a specific battery.
  ///
  /// This asynchronous method makes a GET request to the Tesla API, retrieving
  /// the data for a specific battery based on the [batteryId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the battery data if the request is successful.
  ///
  /// [batteryId] is the identifier of the battery for which data is to be fetched.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var batteryData = await getBatteryData(batteryId);
  /// ```
  Future<Response> getBatteryData(int batteryId) async {
    try {
      final response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/powerwalls/$batteryId',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to fetch battery data');
      }
    } catch (e) {
      throw Exception('Failed to fetch battery data: $e');
    }
  }

  /// Fetches the power time-series data for a specific battery.
  ///
  /// This asynchronous method makes a GET request to the Tesla API, retrieving
  /// the power time-series data for a specific battery based on the [batteryId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the power time-series data if the request is successful.
  ///
  /// [batteryId] is the identifier of the battery for which the power time-series data is to be fetched.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var batteryPowerTimeSeriesData = await getBatteryPowerTimeSeriesData(batteryId);
  /// ```
  Future<Response> getBatteryPowerTimeSeriesData(int batteryId) async {
    try {
      final response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/powerwalls/$batteryId/powerhistory',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to fetch Battery Power Time-series Data');
      }
    } catch (e) {
      throw Exception('Failed to fetch Battery Power Time-series Data: $e');
    }
  }

  /// Fetches the energy time-series data for a specific battery.
  ///
  /// This asynchronous method makes a GET request to the Tesla API, retrieving
  /// the energy time-series data for a specific battery based on the [batteryId].
  ///
  /// Throws an [Exception] if the request is unsuccessful or if there's any error during the process.
  ///
  /// Returns a [Response] object containing the energy time-series data if the request is successful.
  ///
  /// [batteryId] is the identifier of the battery for which the energy time-series data is to be fetched.
  ///
  /// Usage:
  ///
  /// ```dart
  /// var batteryEnergyTimeSeriesData = await getBatteryEnergyTimeSeriesData(batteryId);
  /// ```
  Future<Response> getBatteryEnergyTimeSeriesData(int batteryId) async {
    try {
      final response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/powerwalls/$batteryId/energyhistory',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return response.data;
      } else {
        throw Exception('Failed to fetch Battery Energy Time-series Data');
      }
    } catch (e) {
      throw Exception('Failed to fetch Battery Energy Time-series Data: $e');
    }
  }
}
