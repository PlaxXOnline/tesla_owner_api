import 'package:tesla_owner_api/models/models.dart';

/// Defines a `Vehicle` data model class.
///
/// This class represents a Tesla vehicle and encapsulates all
/// the data related to it.
class Vehicle {
  /// The unique identifier of the vehicle.
  final String? id;

  /// The unique identifier of the user who owns the vehicle.
  final String? userId;

  /// The unique identifier of the vehicle provided by the manufacturer.
  final String? vehicleId;

  /// The Vehicle Identification Number (VIN) of the vehicle.
  final String? vin;

  /// The name of the vehicle as displayed in the Tesla app.
  final String? displayName;

  /// The option codes representing the vehicle's configuration.
  final String? optionCodes;

  /// The color of the vehicle.
  final String? color;

  /// List of tokens associated with the vehicle.
  final List<String>? tokens;

  /// The current state of the vehicle (e.g., online, asleep).
  final String? state;

  /// Whether the vehicle is in service.
  final bool? inService;

  /// A secondary unique identifier for the vehicle.
  final String? idS;

  /// Whether the vehicle's calendar is enabled.
  final bool? calendarEnabled;

  /// The backseat token associated with the vehicle.
  final String? backseatToken;

  /// The timestamp of the last update to the backseat token.
  final String? backseatTokenUpdatedAt;

  /// The GUI settings of the vehicle.
  final GuiSettings? guiSettings;

  /// The state of the vehicle (e.g., driving, charging).
  final VehicleState? vehicleState;

  /// The state of the vehicle's climate control system.
  final ClimateState? climateState;

  /// The state of the vehicle's battery and charging system.
  final ChargeState? chargeState;

  /// The drive state of the vehicle (e.g., speed, power).
  final DriveState? driveState;

  /// The configuration of the vehicle (e.g., car type, roof color).
  final VehicleConfig? vehicleConfig;

  /// Creates a new instance of the [Vehicle].
  ///
  /// All parameters are optional and can be supplied as named parameters.
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

  /// Constructs a new [Vehicle] instance from a map.
  ///
  /// This constructor is typically used for constructing a new
  /// [Vehicle] instance from a JSON object that has been
  /// deserialized into a map. The map keys correspond to the
  /// property names of [Vehicle] and the map values are the
  /// respective values of these properties.
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
