import 'package:dio/dio.dart';
import 'package:tesla_owner_api/models/models.dart';
import 'package:tesla_owner_api/src/vehicles/commands/commands.dart';

class Vehicles {
  final String _token;
  late Commands commands;
  Vehicles(this._token) {
    commands = Commands(_token);
  }
  final Dio _dio = Dio();

  /// Fetches a list of vehicles.
  ///
  /// Returns a `VehicleList` object containing the data.
  /// Throws a `DioError` if the request fails.
  Future<VehicleList> getAllVehicles() async {
    try {
      final response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return VehicleList.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch all Vehicle Data');
      }
    } catch (e) {
      throw Exception('Failed to fetch all Vehicle Data: $e');
    }
  }

  /// Fetches data for a specific vehicle.
  ///
  /// [id] is the ID of the vehicle.
  /// Returns a `Vehicle` object containing the data.
  /// Throws a `DioError` if the request fails.
  Future<Vehicle> getSpecificVehicle(String id) async {
    try {
      final response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return Vehicle.fromJson(response.data);
      } else {
        throw Exception('Failed to fetch Vehicle Data');
      }
    } catch (e) {
      throw Exception('Failed to fetch Vehicle Data: $e');
    }
  }

  /// Fetches the legacy vehicle data.
  ///
  /// [id] is the identifier of the vehicle.
  Future<Vehicle> getLegacyVehicleData(String id) async {
    try {
      var response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/data',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return Vehicle.fromJson(response.data);
      } else {
        throw Exception('Failed to load legacy vehicle data');
      }
    } catch (e) {
      throw Exception('Failed to load legacy vehicle data: $e');
    }
  }

  /// Fetches the vehicle data.
  ///
  /// [id] is the identifier of the vehicle.
  Future<Vehicle> getVehicleData(String id) async {
    try {
      var response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/vehicle_data',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return Vehicle.fromJson(response.data);
      } else {
        throw Exception('Failed to load vehicle data');
      }
    } catch (e) {
      throw Exception('Failed to load vehicle data: $e');
    }
  }

  /// Fetches the vehicle service data.
  ///
  /// [id] is the identifier of the vehicle.
  Future<Vehicle> getVehicleServiceData(String id) async {
    try {
      var response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/service_data',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return Vehicle.fromJson(response.data);
      } else {
        throw Exception('Failed to load vehicle service data');
      }
    } catch (e) {
      throw Exception('Failed to load vehicle service data: $e');
    }
  }

  /// Checks if mobile is enabled for the vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<bool> isMobileEnabled(String id) async {
    try {
      var response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/mobile_enabled',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        if (response.data['response'] == true ||
            response.data['response'] == 'true') {
          return true;
        } else {
          return false;
        }
      } else {
        throw Exception('Failed to check if mobile is enabled');
      }
    } catch (e) {
      throw Exception('Failed to check if mobile is enabled: $e');
    }
  }

  /// Fetches the charge state of the vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ChargeState> getChargeState(String id) async {
    try {
      var response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/data_request/charge_state',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ChargeState.fromJson(response.data);
      } else {
        throw Exception('Failed to load charge state');
      }
    } catch (e) {
      throw Exception('Failed to load charge state: $e');
    }
  }

  /// Fetches the climate state of the vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ClimateState> getClimateState(String id) async {
    try {
      var response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/data_request/climate_state',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ClimateState.fromJson(response.data);
      } else {
        throw Exception('Failed to load climate state');
      }
    } catch (e) {
      throw Exception('Failed to load climate state: $e');
    }
  }

  /// Fetches the drive state of the vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<DriveState> getDriveState(String id) async {
    try {
      var response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/data_request/drive_state',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return DriveState.fromJson(response.data);
      } else {
        throw Exception('Failed to load drive state');
      }
    } catch (e) {
      throw Exception('Failed to load drive state: $e');
    }
  }

  /// Fetches the GUI settings of the vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<GuiSettings> getGUISettings(String id) async {
    try {
      var response = await _dio.get(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/data_request/gui_settings',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return GuiSettings.fromJson(response.data);
      } else {
        throw Exception('Failed to load GUI settings');
      }
    } catch (e) {
      throw Exception('Failed to load GUI settings: $e');
    }
  }
}
