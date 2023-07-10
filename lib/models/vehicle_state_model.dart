/// Defines a `VehicleState` data model class.
///
/// This class represents the state of a Tesla vehicle and encapsulates all
/// the data related to it.
class VehicleState {
  /// The version of the Tesla API being used.
  final int? apiVersion;

  /// The current autopark state of the vehicle.
  final String? autoparkState;

  /// The second version of the autopark state.
  final String? autoparkStateV2;

  /// The autopark style of the vehicle.
  final String? autoparkStyle;

  /// Indicates if the calendar is supported in the vehicle.
  final bool? calendarSupported;

  /// The version of the car software.
  final String? carVersion;

  /// The state of the center display (0 = off, 2 = on).
  final int? centerDisplayState;

  /// The state of the driver's door (0 = closed, 1 = open).
  final int? df;

  /// The state of the rear driver side door (0 = closed, 1 = open).
  final int? dr;

  /// The state of the front trunk, also known as the 'frunk' (0 = closed, 1 = open).
  final int? ft;

  /// Indicates if Homelink is nearby.
  final bool? homelinkNearby;

  /// The last autopark error.
  final String? lastAutoparkError;

  /// Indicates if the vehicle is locked.
  final bool? locked;

  /// Indicates if notifications are supported.
  final bool? notificationsSupported;

  /// The current odometer reading of the vehicle.
  final double? odometer;

  /// Indicates if parsed calendar is supported.
  final bool? parsedCalendarSupported;

  /// The state of the passenger door (0 = closed, 1 = open).
  final int? pf;

  /// The state of the rear passenger door (0 = closed, 1 = open).
  final int? pr;

  /// Indicates if the vehicle is in remote start mode.
  final bool? remoteStart;

  /// Indicates if remote start is supported.
  final bool? remoteStartSupported;

  /// The state of the rear trunk, also known as the 'trunk' (0 = closed, 1 = open).
  final int? rt;

  /// The percentage the sun roof is open (0 - 100).
  final int? sunRoofPercentOpen;

  /// The current state of the sun roof.
  final String? sunRoofState;

  /// A timestamp when the vehicle state was last updated.
  final int? timestamp;

  /// Indicates if valet mode is active.
  final bool? valetMode;

  /// The name of the vehicle.
  final String? vehicleName;

  /// Creates a new instance of the [VehicleState].
  ///
  /// All parameters are optional and can be supplied as named parameters.
  VehicleState({
    this.apiVersion,
    this.autoparkState,
    this.autoparkStateV2,
    this.autoparkStyle,
    this.calendarSupported,
    this.carVersion,
    this.centerDisplayState,
    this.df,
    this.dr,
    this.ft,
    this.homelinkNearby,
    this.lastAutoparkError,
    this.locked,
    this.notificationsSupported,
    this.odometer,
    this.parsedCalendarSupported,
    this.pf,
    this.pr,
    this.remoteStart,
    this.remoteStartSupported,
    this.rt,
    this.sunRoofPercentOpen,
    this.sunRoofState,
    this.timestamp,
    this.valetMode,
    this.vehicleName,
  });

  /// Constructs a new [VehicleState] instance from a map.
  ///
  /// This constructor is typically used for constructing a new
  /// [VehicleState] instance from a JSON object that has been
  /// deserialized into a map. The map keys correspond to the
  /// property names of [VehicleState] and the map values are the
  /// respective values of these properties.
  factory VehicleState.fromJson(Map<String, dynamic> json) {
    return VehicleState(
      apiVersion: json['api_version'],
      autoparkState: json['autopark_state'],
      autoparkStateV2: json['autopark_state_v2'],
      autoparkStyle: json['autopark_style'],
      calendarSupported: json['calendar_supported'],
      carVersion: json['car_version'],
      centerDisplayState: json['center_display_state'],
      df: json['df'],
      dr: json['dr'],
      ft: json['ft'],
      homelinkNearby: json['homelink_nearby'],
      lastAutoparkError: json['last_autopark_error'],
      locked: json['locked'],
      notificationsSupported: json['notifications_supported'],
      odometer: json['odometer'],
      parsedCalendarSupported: json['parsed_calendar_supported'],
      pf: json['pf'],
      pr: json['pr'],
      remoteStart: json['remote_start'],
      remoteStartSupported: json['remote_start_supported'],
      rt: json['rt'],
      sunRoofPercentOpen: json['sun_roof_percent_open'],
      sunRoofState: json['sun_roof_state'],
      timestamp: json['timestamp'],
      valetMode: json['valet_mode'],
      vehicleName: json['vehicle_name'],
    );
  }
}
