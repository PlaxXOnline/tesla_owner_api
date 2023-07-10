class ChargeState {
  final String? chargingState;
  final String? fastChargerType;
  final String? fastChargerBrand;
  final int? chargeLimitSoc;
  final int? chargeLimitSocStd;
  final int? chargeLimitSocMin;
  final int? chargeLimitSocMax;
  final bool? chargeToMaxRange;
  final int? maxRangeChargeCounter;
  final bool? fastChargerPresent;
  final double? batteryRange;
  final double? estBatteryRange;
  final double? idealBatteryRange;
  final int? batteryLevel;
  final int? usableBatteryLevel;
  final double? chargeEnergyAdded;
  final double? chargeMilesAddedRated;
  final double? chargeMilesAddedIdeal;
  final int? chargerVoltage;
  final int? chargerPilotCurrent;
  final int? chargerActualCurrent;
  final int? chargerPower;
  final double? timeToFullCharge;
  final bool? tripCharging;
  final double? chargeRate;
  final bool? chargePortDoorOpen;
  final String? connChargeCable;
  final String? scheduledChargingStartTime;
  final bool? scheduledChargingPending;
  final String? userChargeEnableRequest;
  final bool? chargeEnableRequest;
  final String? chargerPhases;
  final String? chargePortLatch;
  final int? chargeCurrentRequest;
  final int? chargeCurrentRequestMax;
  final bool? managedChargingActive;
  final bool? managedChargingUserCanceled;
  final String? managedChargingStartTime;
  final bool? batteryHeaterOn;
  final bool? notEnoughPowerToHeat;
  final int? timestamp;

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
