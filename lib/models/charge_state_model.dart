/// Represents the charging state and various related properties of an electric vehicle.
///
/// This class provides a detailed overview of the current charging status,
/// including information about the type of charger being used, the state of the battery,
/// and other specifics related to the charging process.
class ChargeState {
  /// The current state of charging.
  ///
  /// This can hold various values indicating the charging status such as "Charging", "Disconnected", etc.
  final String? chargingState;

  /// Type of the fast charger being used, if any.
  final String? fastChargerType;

  /// Brand of the fast charger being used, if any.
  final String? fastChargerBrand;

  /// State of Charge limit that is set currently.
  final int? chargeLimitSoc;

  /// Standard State of Charge limit.
  final int? chargeLimitSocStd;

  /// Minimum limit for the State of Charge.
  final int? chargeLimitSocMin;

  /// Maximum limit for the State of Charge.
  final int? chargeLimitSocMax;

  /// Indicates if the vehicle is set to charge to the maximum range.
  final bool? chargeToMaxRange;

  /// The number of times the vehicle has been charged to the maximum range.
  final int? maxRangeChargeCounter;

  /// Indicates if a fast charger is currently connected to the vehicle.
  final bool? fastChargerPresent;

  /// The estimated battery range in miles.
  final double? batteryRange;

  /// The estimated battery range considering the current driving style and environmental conditions.
  final double? estBatteryRange;

  /// The ideal battery range under optimal driving and environmental conditions.
  final double? idealBatteryRange;

  /// The current battery level as a percentage.
  final int? batteryLevel;

  /// The current usable battery level as a percentage.
  final int? usableBatteryLevel;

  /// The amount of energy added to the battery during the current charging session.
  final double? chargeEnergyAdded;

  /// The rated range added during the current charging session.
  final double? chargeMilesAddedRated;

  /// The ideal range added during the current charging session.
  final double? chargeMilesAddedIdeal;

  /// The voltage at which the vehicle is currently charging.
  final int? chargerVoltage;

  /// The maximum current that the charger can deliver.
  final int? chargerPilotCurrent;

  /// The current being delivered to the vehicle.
  final int? chargerActualCurrent;

  /// The power being delivered to the vehicle in kilowatts.
  final int? chargerPower;

  /// Estimated time to full charge.
  final double? timeToFullCharge;

  /// Indicates if the vehicle is currently trip charging.
  final bool? tripCharging;

  /// Current charging rate in miles per hour.
  final double? chargeRate;

  /// Indicates if the charge port door is open.
  final bool? chargePortDoorOpen;

  /// The type of charge cable connected.
  final String? connChargeCable;

  /// The time when scheduled charging will begin.
  final String? scheduledChargingStartTime;

  /// Indicates if scheduled charging is pending.
  final bool? scheduledChargingPending;

  /// Indicates if a user has requested to enable charging.
  final String? userChargeEnableRequest;

  /// Indicates if a request to enable charging has been sent.
  final bool? chargeEnableRequest;

  /// Phases being used by the charger.
  final String? chargerPhases;

  /// The state of the charge port latch.
  final String? chargePortLatch;

  /// The requested charging current.
  final int? chargeCurrentRequest;

  /// The maximum allowable charging current.
  final int? chargeCurrentRequestMax;

  /// Indicates if managed charging is active.
  final bool? managedChargingActive;

  /// Indicates if a user has canceled managed charging.
  final bool? managedChargingUserCanceled;

  /// The time when managed charging was started.
  final String? managedChargingStartTime;

  /// Indicates if the battery heater is on.
  final bool? batteryHeaterOn;

  /// Indicates if there is not enough power to heat the vehicle.
  final bool? notEnoughPowerToHeat;

  /// The timestamp when the charging status was recorded.
  final int? timestamp;

  /// Constructor for `ChargeState` class.
  ChargeState({
    this.chargingState,
    this.fastChargerType,
    this.fastChargerBrand,
    this.chargeLimitSoc,
    this.chargeLimitSocStd,
    this.chargeLimitSocMin,
    this.chargeLimitSocMax,
    this.chargeToMaxRange,
    this.maxRangeChargeCounter,
    this.fastChargerPresent,
    this.batteryRange,
    this.estBatteryRange,
    this.idealBatteryRange,
    this.batteryLevel,
    this.usableBatteryLevel,
    this.chargeEnergyAdded,
    this.chargeMilesAddedRated,
    this.chargeMilesAddedIdeal,
    this.chargerVoltage,
    this.chargerPilotCurrent,
    this.chargerActualCurrent,
    this.chargerPower,
    this.timeToFullCharge,
    this.tripCharging,
    this.chargeRate,
    this.chargePortDoorOpen,
    this.connChargeCable,
    this.scheduledChargingStartTime,
    this.scheduledChargingPending,
    this.userChargeEnableRequest,
    this.chargeEnableRequest,
    this.chargerPhases,
    this.chargePortLatch,
    this.chargeCurrentRequest,
    this.chargeCurrentRequestMax,
    this.managedChargingActive,
    this.managedChargingUserCanceled,
    this.managedChargingStartTime,
    this.batteryHeaterOn,
    this.notEnoughPowerToHeat,
    this.timestamp,
  });

  /// Creates a new `ChargeState` instance from a map.
  factory ChargeState.fromJson(Map<String, dynamic> json) {
    return ChargeState(
      chargingState: json['charging_state'],
      fastChargerType: json['fast_charger_type'],
      fastChargerBrand: json['fast_charger_brand'],
      chargeLimitSoc: json['charge_limit_soc'],
      chargeLimitSocStd: json['charge_limit_soc_std'],
      chargeLimitSocMin: json['charge_limit_soc_min'],
      chargeLimitSocMax: json['charge_limit_soc_max'],
      chargeToMaxRange: json['charge_to_max_range'],
      maxRangeChargeCounter: json['max_range_charge_counter'],
      fastChargerPresent: json['fast_charger_present'],
      batteryRange: json['battery_range'],
      estBatteryRange: json['est_battery_range'],
      idealBatteryRange: json['ideal_battery_range'],
      batteryLevel: json['battery_level'],
      usableBatteryLevel: json['usable_battery_level'],
      chargeEnergyAdded: json['charge_energy_added'],
      chargeMilesAddedRated: json['charge_miles_added_rated'],
      chargeMilesAddedIdeal: json['charge_miles_added_ideal'],
      chargerVoltage: json['charger_voltage'],
      chargerPilotCurrent: json['charger_pilot_current'],
      chargerActualCurrent: json['charger_actual_current'],
      chargerPower: json['charger_power'],
      timeToFullCharge: json['time_to_full_charge'],
      tripCharging: json['trip_charging'],
      chargeRate: json['charge_rate'],
      chargePortDoorOpen: json['charge_port_door_open'],
      connChargeCable: json['conn_charge_cable'],
      scheduledChargingStartTime: json['scheduled_charging_start_time'],
      scheduledChargingPending: json['scheduled_charging_pending'],
      userChargeEnableRequest: json['user_charge_enable_request'],
      chargeEnableRequest: json['charge_enable_request'],
      chargerPhases: json['charger_phases'],
      chargePortLatch: json['charge_port_latch'],
      chargeCurrentRequest: json['charge_current_request'],
      chargeCurrentRequestMax: json['charge_current_request_max'],
      managedChargingActive: json['managed_charging_active'],
      managedChargingUserCanceled: json['managed_charging_user_canceled'],
      managedChargingStartTime: json['managed_charging_start_time'],
      batteryHeaterOn: json['battery_heater_on'],
      notEnoughPowerToHeat: json['not_enough_power_to_heat'],
      timestamp: json['timestamp'],
    );
  }
}
