class DriveState {
  final String? shiftState;
  final String? speed;
  final int? power;
  final double? latitude;
  final double? longitude;
  final int? heading;
  final int? gpsAsOf;
  final int? nativeLocationSupported;
  final double? nativeLatitude;
  final double? nativeLongitude;
  final String? nativeType;
  final int? timestamp;

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
