/// A class that represents the climate state of a vehicle.
///
/// Each instance holds data related to inside and outside temperature,
/// driver and passenger temperature settings, various defroster, fan,
/// heater statuses, and more.
class ClimateState {
  /// The current inside temperature of the vehicle in degrees Celsius.
  final double? insideTemp;

  /// The current outside temperature of the vehicle in degrees Celsius.
  final double? outsideTemp;

  /// The driver's side temperature setting in degrees Celsius.
  final double? driverTempSetting;

  /// The passenger side temperature setting in degrees Celsius.
  final double? passengerTempSetting;

  /// The direction of the temperature on the driver's side.
  final int? leftTempDirection;

  /// The direction of the temperature on the passenger's side.
  final int? rightTempDirection;

  /// Whether the front defroster is on.
  final bool? isFrontDefrosterOn;

  /// Whether the rear defroster is on.
  final bool? isRearDefrosterOn;

  /// The current fan status.
  final int? fanStatus;

  /// Whether the climate control is on.
  final bool? isClimateOn;

  /// The minimum available temperature in degrees Celsius.
  final double? minAvailTemp;

  /// The maximum available temperature in degrees Celsius.
  final double? maxAvailTemp;

  /// Status of the left front seat heater.
  final bool? seatHeaterLeft;

  /// Status of the right front seat heater.
  final bool? seatHeaterRight;

  /// Status of the left rear seat heater.
  final bool? seatHeaterRearLeft;

  /// Status of the right rear seat heater.
  final bool? seatHeaterRearRight;

  /// Status of the center rear seat heater.
  final bool? seatHeaterRearCenter;

  /// Level of the right rear seat heater.
  final int? seatHeaterRearRightBack;

  /// Level of the left rear seat heater.
  final int? seatHeaterRearLeftBack;

  /// Status of the battery heater.
  final bool? batteryHeater;

  /// Whether the battery heater has no power.
  final bool? batteryHeaterNoPower;

  /// Status of the steering wheel heater.
  final bool? steeringWheelHeater;

  /// Status of the wiper blade heater.
  final bool? wiperBladeHeater;

  /// Status of the side mirror heaters.
  final bool? sideMirrorHeaters;

  /// Whether preconditioning is active.
  final bool? isPreconditioning;

  /// Whether smart preconditioning is active.
  final bool? smartPreconditioning;

  /// Whether auto conditioning is on.
  final bool? isAutoConditioningOn;

  /// The timestamp when the data was recorded.
  final int? timestamp;

  /// Constructs a new instance of the [ClimateState] class.
  ///
  /// Takes a series of optional parameters, each representing a specific aspect of the vehicle's climate state.
  ClimateState({
    this.insideTemp,
    this.outsideTemp,
    this.driverTempSetting,
    this.passengerTempSetting,
    this.leftTempDirection,
    this.rightTempDirection,
    this.isFrontDefrosterOn,
    this.isRearDefrosterOn,
    this.fanStatus,
    this.isClimateOn,
    this.minAvailTemp,
    this.maxAvailTemp,
    this.seatHeaterLeft,
    this.seatHeaterRight,
    this.seatHeaterRearLeft,
    this.seatHeaterRearRight,
    this.seatHeaterRearCenter,
    this.seatHeaterRearRightBack,
    this.seatHeaterRearLeftBack,
    this.batteryHeater,
    this.batteryHeaterNoPower,
    this.steeringWheelHeater,
    this.wiperBladeHeater,
    this.sideMirrorHeaters,
    this.isPreconditioning,
    this.smartPreconditioning,
    this.isAutoConditioningOn,
    this.timestamp,
  });

  /// Creates a new instance of the [ClimateState] class from a map.
  ///
  /// The [json] argument is a [Map] with string keys and dynamic values. Each key corresponds to a property of the [ClimateState] class.
  factory ClimateState.fromJson(Map<String, dynamic> json) {
    return ClimateState(
      insideTemp: json['inside_temp'],
      outsideTemp: json['outside_temp'],
      driverTempSetting: json['driver_temp_setting'],
      passengerTempSetting: json['passenger_temp_setting'],
      leftTempDirection: json['left_temp_direction'],
      rightTempDirection: json['right_temp_direction'],
      isFrontDefrosterOn: json['is_front_defroster_on'],
      isRearDefrosterOn: json['is_rear_defroster_on'],
      fanStatus: json['fan_status'],
      isClimateOn: json['is_climate_on'],
      minAvailTemp: json['min_avail_temp'],
      maxAvailTemp: json['max_avail_temp'],
      seatHeaterLeft: json['seat_heater_left'],
      seatHeaterRight: json['seat_heater_right'],
      seatHeaterRearLeft: json['seat_heater_rear_left'],
      seatHeaterRearRight: json['seat_heater_rear_right'],
      seatHeaterRearCenter: json['seat_heater_rear_center'],
      seatHeaterRearRightBack: json['seat_heater_rear_right_back'],
      seatHeaterRearLeftBack: json['seat_heater_rear_left_back'],
      batteryHeater: json['battery_heater'],
      batteryHeaterNoPower: json['battery_heater_no_power'],
      steeringWheelHeater: json['steering_wheel_heater'],
      wiperBladeHeater: json['wiper_blade_heater'],
      sideMirrorHeaters: json['side_mirror_heaters'],
      isPreconditioning: json['is_preconditioning'],
      smartPreconditioning: json['smart_preconditioning'],
      isAutoConditioningOn: json['is_auto_conditioning_on'],
      timestamp: json['timestamp'],
    );
  }
}
