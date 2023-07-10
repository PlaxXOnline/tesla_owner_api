/// A class that represents the Graphical User Interface (GUI) settings of a vehicle.
///
/// Each instance holds data related to the vehicle's GUI display settings
/// such as units for distance, temperature, charge rate, time format and range display.
class GuiSettings {
  /// The distance units being used in the GUI (e.g., "km" for kilometers, "mi" for miles).
  final String? guiDistanceUnits;

  /// The temperature units being used in the GUI (e.g., "C" for Celsius, "F" for Fahrenheit).
  final String? guiTemperatureUnits;

  /// The units being used for charge rate in the GUI (e.g., "kW" for kilowatts, "mi/hr" for miles per hour).
  final String? guiChargeRateUnits;

  /// Whether the GUI uses a 24-hour time format.
  final bool? gui24HourTime;

  /// The type of range display used in the GUI (e.g., "Rated", "Ideal").
  final String? guiRangeDisplay;

  /// The timestamp when the data was recorded.
  final int? timestamp;

  /// Constructs a new instance of the [GuiSettings] class.
  ///
  /// Takes a series of optional parameters, each representing a specific aspect of the vehicle's GUI settings.
  GuiSettings({
    this.guiDistanceUnits,
    this.guiTemperatureUnits,
    this.guiChargeRateUnits,
    this.gui24HourTime,
    this.guiRangeDisplay,
    this.timestamp,
  });

  /// Creates a new instance of the [GuiSettings] class from a map.
  ///
  /// The [json] argument is a [Map] with string keys and dynamic values. Each key corresponds to a property of the [GuiSettings] class.
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
