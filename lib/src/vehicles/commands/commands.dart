import 'package:dio/dio.dart';
import 'package:tesla_owner_api/models/models.dart';
import 'package:tesla_owner_api/models/sun_roof_states_model.dart';

class Commands {
  final String _token;
  Commands(this._token);
  final Dio _dio = Dio();

  /// Wakes up the vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> wakeUp(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/wake_up',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to wake up the vehicle');
      }
    } catch (e) {
      throw Exception('Failed to wake up the vehicle: $e');
    }
  }

  /// Unlocks the doors of the vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> unlockDoors(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/door_unlock',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to unlock the doors');
      }
    } catch (e) {
      throw Exception('Failed to unlock the doors: $e');
    }
  }

  /// Locks the doors of the vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> lockDoors(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/door_lock',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to lock the doors');
      }
    } catch (e) {
      throw Exception('Failed to lock the doors: $e');
    }
  }

  /// Honks the horn of the vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> honkHorn(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/honk_horn',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to honk the horn');
      }
    } catch (e) {
      throw Exception('Failed to honk the horn: $e');
    }
  }

  /// Flashes the lights of the vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> flashLights(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/flash_lights',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to flash the lights');
      }
    } catch (e) {
      throw Exception('Failed to flash the lights: $e');
    }
  }

  /// Starts the Air Conditioning of the vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> startHVACSystem(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/auto_conditioning_start',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to start the HVAC System');
      }
    } catch (e) {
      throw Exception('Failed to start the HVAC System: $e');
    }
  }

  /// Stops the Air Conditioning of the vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> stopHVACSystem(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/auto_conditioning_stop',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to stops the HVAC System');
      }
    } catch (e) {
      throw Exception('Failed to stops the HVAC System: $e');
    }
  }

  /// Set the Temperature of the vehicle.
  ///
  /// [driverTemp] is the desired Temperature for the Driver in Celsius.
  /// [passengerTemp] is the desired Temperature for the Passenger in Celsius.
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> setTemperature(
      String id, int driverTemp, int passengerTemp) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/set_temps?driver_temp=$driverTemp&passenger_temp=$passengerTemp',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to set the Temperature');
      }
    } catch (e) {
      throw Exception('Failed to set the Temperature: $e');
    }
  }

  /// Set the Charge Limit of the vehicle.
  ///
  /// [limit] is the Charge Limit in percent.
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> setChargeLimit(String id, int limit) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/set_charge_limit?percent=$limit',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to set the Charge Limit');
      }
    } catch (e) {
      throw Exception('Failed to set the Charge Limit: $e');
    }
  }

  /// Set the Charge Limit of the vehicle to MAX.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> setMAXChargeLimit(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/charge_max_range',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to set the Charge Limit to MAX');
      }
    } catch (e) {
      throw Exception('Failed to set the Charge Limit to MAX: $e');
    }
  }

  /// Set the Charge Limit of the vehicle to Standard.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> setStandardChargeLimit(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/charge_standard',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to set the Charge Limit to Standard');
      }
    } catch (e) {
      throw Exception('Failed to set the Charge Limit to Standard: $e');
    }
  }

  /// Set the Sun Roof of the vehicle.
  ///
  /// [state] is the desired [SunRoofStates].
  /// [SunRoofStates.open]
  /// [SunRoofStates.closed]
  /// [SunRoofStates.comfort]
  /// [SunRoofStates.vent]
  /// [SunRoofStates.move]
  /// if you want to use the [SunRoofStates.move] option, so first you have
  /// to use the [SunRoofPercentage] Constructor with the percentage as parameter.
  /// [SunRoofPercentage(int percentage)]
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> setSunRoof(String id, SunRoofStates state) async {
    var sunRoofPercentage = SunRoofPercentage.stateValue[state];
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/sun_roof_control?state=$state&percent=$sunRoofPercentage',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to set the Sun Roof');
      }
    } catch (e) {
      throw Exception('Failed to set the Sun Roof: $e');
    }
  }

  /// Open or Closes the Trunk of the Vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> openOrCloseTrunk(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/actuate_trunk',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to Open or Close the Trunk');
      }
    } catch (e) {
      throw Exception('Failed to Open or Close the Trunk: $e');
    }
  }

  /// Start vehicle key-less driving mode. The vehicle must be placed in drive within 2 minutes of the response.
  ///
  /// [password] is the password from my.teslamotors.com
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> startRemoteDrive(String id, String password) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/remote_start_drive?password=$password',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to Start Remote Drive');
      }
    } catch (e) {
      throw Exception('Failed to Start Remote Drive: $e');
    }
  }

  /// Opens vehicle charge port.
  /// Also unlocks the charge port if it is locked.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> openChargePort(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/charge_port_door_open',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to open the Charge Port');
      }
    } catch (e) {
      throw Exception('Failed to open the Charge Port: $e');
    }
  }

  /// Close the Charge Port of the Vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> closeChargePort(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/charge_port_door_close',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to close the Charge Port');
      }
    } catch (e) {
      throw Exception('Failed to close the Charge Port: $e');
    }
  }

  /// Starts vehicle charging.
  /// Vehicle must be plugged in, have power available, and not at charge limit.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> startCharging(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/charge_start',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to start Charging');
      }
    } catch (e) {
      throw Exception('Failed to start Charging: $e');
    }
  }

  /// Stop vehicle charging.
  /// Vehicle must be charging.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> stopCharging(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/charge_stop',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to stop Charging');
      }
    } catch (e) {
      throw Exception('Failed to stop Charging: $e');
    }
  }

  /// Set vehicle valet mode on or off with a PIN to disable it from within the car.
  /// Reuses last PIN from previous valet session.
  /// Valet Mode limits the car's top speed to 70MPH and 80kW of acceleration power.
  /// It also disables Homelink, Bluetooth and Wifi settings, and the ability to disable mobile access to the car.
  /// It also hides your favorites, home, and work locations in navigation.
  ///
  /// [on] Valet Mode On or Off.
  /// [pin] is the four digit PIN.
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> setValetMode(String id, bool on, int pin) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/set_valet_mode?on=$on&password=$pin',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to set Valet Mode to $on');
      }
    } catch (e) {
      throw Exception('Failed to set Valet Mode to $on: $e');
    }
  }

  /// Resets vehicle valet PIN of the Vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> resetValetPIN(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/reset_valet_pin',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to reset Valet PIN');
      }
    } catch (e) {
      throw Exception('Failed to reset Valet PIN: $e');
    }
  }

  /// Activates the Speed Limit of the Vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> activateSpeedLimit(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/speed_limit_activate',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to activate the Speed Limit');
      }
    } catch (e) {
      throw Exception('Failed to activate the Speed Limit: $e');
    }
  }

  /// Deactivates the Speed Limit of the Vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> deactivateSpeedLimit(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/speed_limit_deactivate',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to deactivate the Speed Limit');
      }
    } catch (e) {
      throw Exception('Failed to deactivate the Speed Limit: $e');
    }
  }

  /// Set the Speed Limit of the Vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> setSpeedLimit(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/speed_limit_set_limit',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to set the Speed Limit');
      }
    } catch (e) {
      throw Exception('Failed to set the Speed Limit: $e');
    }
  }

  /// Clear the Speed Limit PIN of the Vehicle.
  ///
  /// [id] is the identifier of the vehicle.
  Future<ResponseModel> clearSpeedLimitPIN(String id) async {
    try {
      var response = await _dio.post(
        'https://owner-api.teslamotors.com/api/1/vehicles/$id/command/speed_limit_clear_pin',
        options: Options(
          headers: {
            'Authorization': 'Bearer $_token',
          },
        ),
      );
      if (response.statusCode == 200) {
        return ResponseModel.fromJson(response.data);
      } else {
        throw Exception('Failed to clear the Speed Limit PIN');
      }
    } catch (e) {
      throw Exception('Failed to clear the Speed Limit PIN: $e');
    }
  }
}
