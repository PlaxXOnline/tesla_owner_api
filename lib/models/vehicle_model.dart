import 'package:tesla_owner_api/models/models.dart';

class Vehicle {
  final String? id;
  final String? userId;
  final String? vehicleId;
  final String? vin;
  final String? displayName;
  final String? optionCodes;
  final String? color;
  final List<String>? tokens;
  final String? state;
  final bool? inService;
  final String? idS;
  final bool? calendarEnabled;
  final String? backseatToken;
  final String? backseatTokenUpdatedAt;
  final GuiSettings? guiSettings;
  final VehicleState? vehicleState;
  final ClimateState? climateState;
  final ChargeState? chargeState;
  final DriveState? driveState;
  final VehicleConfig? vehicleConfig;

  Vehicle({
    this.id,
    this.userId,
    this.vehicleId,
    this.vin,
    this.displayName,
    this.optionCodes,
    this.color,
    this.tokens,
    this.state,
    this.inService,
    this.idS,
    this.calendarEnabled,
    this.backseatToken,
    this.backseatTokenUpdatedAt,
    this.guiSettings,
    this.vehicleState,
    this.climateState,
    this.chargeState,
    this.driveState,
    this.vehicleConfig,
  });

  factory Vehicle.fromJson(Map<String, dynamic> json) {
    return Vehicle(
      id: json['id'],
      userId: json['user_id'],
      vehicleId: json['vehicle_id'],
      vin: json['vin'],
      displayName: json['display_name'],
      optionCodes: json['option_codes'],
      color: json['color'],
      tokens: json['tokens'] != null ? List<String>.from(json['tokens']) : null,
      state: json['state'],
      inService: json['in_service'],
      idS: json['id_s'],
      calendarEnabled: json['calendar_enabled'],
      backseatToken: json['backseat_token'],
      backseatTokenUpdatedAt: json['backseat_token_updated_at'],
      guiSettings: json['gui_settings'] != null
          ? GuiSettings.fromJson(json['gui_settings'])
          : null,
      vehicleState: json['vehicle_state'] != null
          ? VehicleState.fromJson(json['vehicle_state'])
          : null,
      climateState: json['climate_state'] != null
          ? ClimateState.fromJson(json['climate_state'])
          : null,
      chargeState: json['charge_state'] != null
          ? ChargeState.fromJson(json['charge_state'])
          : null,
      driveState: json['drive_state'] != null
          ? DriveState.fromJson(json['drive_state'])
          : null,
      vehicleConfig: json['vehicle_config'] != null
          ? VehicleConfig.fromJson(json['vehicle_config'])
          : null,
    );
  }
}
