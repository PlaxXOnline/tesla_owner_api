/// Defines the `VehicleConfig` data model class.
///
/// This class encapsulates all the different configurations
/// that a Tesla vehicle can have. Each property corresponds to
/// a specific feature or characteristic of a Tesla vehicle.
class VehicleConfig {
  /// Indicates if the trunks can be actuated.
  final bool? canActuateTrunks;

  /// Specifies the special type of the car.
  final String? carSpecialType;

  /// Specifies the type of the car.
  final String? carType;

  /// Specifies the type of the charge port.
  final String? chargePortType;

  /// Indicates if the vehicle is European model.
  final bool? euVehicle;

  /// Specifies the exterior color of the vehicle.
  final String? exteriorColor;

  /// Indicates if the vehicle has ludicrous mode.
  final bool? hasLudicrousMode;

  /// Indicates if the charge port is motorized.
  final bool? motorizedChargePort;

  /// Specifies the performance configuration of the vehicle.
  final String? perfConfig;

  /// Unknown property. If known, add appropriate comment.
  final bool? plg;

  /// Specifies the type of rear seat heaters.
  final int? rearSeatHeaters;

  /// Specifies the type of rear seat.
  final int? rearSeatType;

  /// Indicates if the vehicle is right-hand drive.
  final bool? rhd;

  /// Specifies the roof color of the vehicle.
  final String? roofColor;

  /// Specifies the type of seats.
  final int? seatType;

  /// Specifies the type of spoiler.
  final String? spoilerType;

  /// Indicates if the sunroof is installed.
  final int? sunRoofInstalled;

  /// Specifies the type of third row seats.
  final String? thirdRowSeats;

  /// Timestamp when the data was recorded.
  final int? timestamp;

  /// Specifies the trim badging.
  final String? trimBadging;

  /// Specifies the type of wheel.
  final String? wheelType;

  /// Creates an instance of [VehicleConfig].
  ///
  /// Takes in several optional parameters each representing
  /// a specific configuration of a Tesla vehicle.
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

  /// Constructs a new [VehicleConfig] instance from a map.
  ///
  /// This constructor is typically used for constructing a new
  /// [VehicleConfig] instance from a JSON object that has been
  /// deserialized into a map. The map keys correspond to the
  /// property names of [VehicleConfig] and the map values are
  /// the respective values of these properties.
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
