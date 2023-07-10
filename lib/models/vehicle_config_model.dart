class VehicleConfig {
  final bool? canActuateTrunks;
  final String? carSpecialType;
  final String? carType;
  final String? chargePortType;
  final bool? euVehicle;
  final String? exteriorColor;
  final bool? hasLudicrousMode;
  final bool? motorizedChargePort;
  final String? perfConfig;
  final bool? plg;
  final int? rearSeatHeaters;
  final int? rearSeatType;
  final bool? rhd;
  final String? roofColor;
  final int? seatType;
  final String? spoilerType;
  final int? sunRoofInstalled;
  final String? thirdRowSeats;
  final int? timestamp;
  final String? trimBadging;
  final String? wheelType;

  VehicleConfig({
    this.canActuateTrunks,
    this.carSpecialType,
    this.carType,
    this.chargePortType,
    this.euVehicle,
    this.exteriorColor,
    this.hasLudicrousMode,
    this.motorizedChargePort,
    this.perfConfig,
    this.plg,
    this.rearSeatHeaters,
    this.rearSeatType,
    this.rhd,
    this.roofColor,
    this.seatType,
    this.spoilerType,
    this.sunRoofInstalled,
    this.thirdRowSeats,
    this.timestamp,
    this.trimBadging,
    this.wheelType,
  });

  factory VehicleConfig.fromJson(Map<String, dynamic> json) {
    return VehicleConfig(
      canActuateTrunks: json['can_actuate_trunks'],
      carSpecialType: json['car_special_type'],
      carType: json['car_type'],
      chargePortType: json['charge_port_type'],
      euVehicle: json['eu_vehicle'],
      exteriorColor: json['exterior_color'],
      hasLudicrousMode: json['has_ludicrous_mode'],
      motorizedChargePort: json['motorized_charge_port'],
      perfConfig: json['perf_config'],
      plg: json['plg'],
      rearSeatHeaters: json['rear_seat_heaters'],
      rearSeatType: json['rear_seat_type'],
      rhd: json['rhd'],
      roofColor: json['roof_color'],
      seatType: json['seat_type'],
      spoilerType: json['spoiler_type'],
      sunRoofInstalled: json['sun_roof_installed'],
      thirdRowSeats: json['third_row_seats'],
      timestamp: json['timestamp'],
      trimBadging: json['trim_badging'],
      wheelType: json['wheel_type'],
    );
  }
}
