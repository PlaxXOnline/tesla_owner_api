/// A class that represents the current drive state of a vehicle.
///
/// Each instance holds data related to the vehicle's shift state, speed, power,
/// geographic location, GPS data, native location data, and more.
class DriveState {
  /// The current shift state of the vehicle (e.g., "P" for Park, "D" for Drive, etc.).
  final String? shiftState;

  /// The current speed of the vehicle in km/h.
  final String? speed;

  /// The current power being used by the vehicle in kW.
  final int? power;

  /// The current latitude of the vehicle's location.
  final double? latitude;

  /// The current longitude of the vehicle's location.
  final double? longitude;

  /// The current heading of the vehicle in degrees (0-360).
  final int? heading;

  /// The timestamp when the GPS data was last updated.
  final int? gpsAsOf;

  /// Whether the native location system is supported (1 for supported, 0 for not supported).
  final int? nativeLocationSupported;

  /// The latitude as reported by the native location system.
  final double? nativeLatitude;

  /// The longitude as reported by the native location system.
  final double? nativeLongitude;

  /// The type of the native location system.
  final String? nativeType;

  /// The timestamp when the data was recorded.
  final int? timestamp;

  /// Constructs a new instance of the [DriveState] class.
  ///
  /// Takes a series of optional parameters, each representing a specific aspect of the vehicle's drive state.
  DriveState({
    this.shiftState,
    this.speed,
    this.power,
    this.latitude,
    this.longitude,
    this.heading,
    this.gpsAsOf,
    this.nativeLocationSupported,
    this.nativeLatitude,
    this.nativeLongitude,
    this.nativeType,
    this.timestamp,
  });

  /// Creates a new instance of the [DriveState] class from a map.
  ///
  /// The [json] argument is a [Map] with string keys and dynamic values. Each key corresponds to a property of the [DriveState] class.
  factory DriveState.fromJson(Map<String, dynamic> json) {
    return DriveState(
      shiftState: json['shift_state'],
      speed: json['speed'],
      power: json['power'],
      latitude: json['latitude'],
      longitude: json['longitude'],
      heading: json['heading'],
      gpsAsOf: json['gps_as_of'],
      nativeLocationSupported: json['native_location_supported'],
      nativeLatitude: json['native_latitude'],
      nativeLongitude: json['native_longitude'],
      nativeType: json['native_type'],
      timestamp: json['timestamp'],
    );
  }
}
