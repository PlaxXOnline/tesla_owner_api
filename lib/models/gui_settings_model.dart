class GuiSettings {
  final String? guiDistanceUnits;
  final String? guiTemperatureUnits;
  final String? guiChargeRateUnits;
  final bool? gui24HourTime;
  final String? guiRangeDisplay;
  final int? timestamp;

  GuiSettings({
    this.guiDistanceUnits,
    this.guiTemperatureUnits,
    this.guiChargeRateUnits,
    this.gui24HourTime,
    this.guiRangeDisplay,
    this.timestamp,
  });

  factory GuiSettings.fromJson(Map<String, dynamic> json) {
    return GuiSettings(
      guiDistanceUnits: json['gui_distance_units'],
      guiTemperatureUnits: json['gui_temperature_units'],
      guiChargeRateUnits: json['gui_charge_rate_units'],
      gui24HourTime: json['gui_24_hour_time'],
      guiRangeDisplay: json['gui_range_display'],
      timestamp: json['timestamp'],
    );
  }
}
