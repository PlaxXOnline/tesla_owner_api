class ClimateState {
  final double? insideTemp;
  final double? outsideTemp;
  final double? driverTempSetting;
  final double? passengerTempSetting;
  final int? leftTempDirection;
  final int? rightTempDirection;
  final bool? isFrontDefrosterOn;
  final bool? isRearDefrosterOn;
  final int? fanStatus;
  final bool? isClimateOn;
  final double? minAvailTemp;
  final double? maxAvailTemp;
  final bool? seatHeaterLeft;
  final bool? seatHeaterRight;
  final bool? seatHeaterRearLeft;
  final bool? seatHeaterRearRight;
  final bool? seatHeaterRearCenter;
  final int? seatHeaterRearRightBack;
  final int? seatHeaterRearLeftBack;
  final bool? batteryHeater;
  final bool? batteryHeaterNoPower;
  final bool? steeringWheelHeater;
  final bool? wiperBladeHeater;
  final bool? sideMirrorHeaters;
  final bool? isPreconditioning;
  final bool? smartPreconditioning;
  final bool? isAutoConditioningOn;
  final int? timestamp;

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
