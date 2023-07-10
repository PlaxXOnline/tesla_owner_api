class VehicleState {
  final int? apiVersion;
  final String? autoparkState;
  final String? autoparkStateV2;
  final String? autoparkStyle;
  final bool? calendarSupported;
  final String? carVersion;
  final int? centerDisplayState;
  final int? df;
  final int? dr;
  final int? ft;
  final bool? homelinkNearby;
  final String? lastAutoparkError;
  final bool? locked;
  final bool? notificationsSupported;
  final double? odometer;
  final bool? parsedCalendarSupported;
  final int? pf;
  final int? pr;
  final bool? remoteStart;
  final bool? remoteStartSupported;
  final int? rt;
  final int? sunRoofPercentOpen;
  final String? sunRoofState;
  final int? timestamp;
  final bool? valetMode;
  final String? vehicleName;

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
