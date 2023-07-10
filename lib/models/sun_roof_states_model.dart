/// An enumeration of possible sunroof states.
///
/// The states include [open], [closed], [comfort], [vent], and [move].
enum SunRoofStates {
  open,
  closed,
  comfort,
  vent,
  move,
}

/// Class representing the percentage of the sunroof openness according to its state.
///
/// The [stateValue] map associates a percentage value with each [SunRoofStates].
/// The percentage for the [move] state can be updated by instantiating the class
/// with a specific percentage value.
class SunRoofPercentage {
  /// A map containing the default values of sunroof states to their respective percentage values.
  static Map<SunRoofStates, String> stateValue = {
    SunRoofStates.open: '100%',
    SunRoofStates.closed: '0%',
    SunRoofStates.comfort: '80%',
    SunRoofStates.vent: '15%',
    SunRoofStates.move: '0%',
  };

  /// Constructor for the [SunRoofPercentage] class.
  ///
  /// It accepts a single parameter [percentage], which is used to update
  /// the percentage value associated with the [move] state in the [stateValue] map.
  SunRoofPercentage(int percentage) {
    stateValue[SunRoofStates.move] = '$percentage%';
  }

  /// Returns the percentage value associated with a specific [state].
  ///
  /// If the [state] does not exist in the [stateValue] map, it defaults to '100%'.
  String getSunRoofPercentage(SunRoofStates state) {
    return stateValue[state] ?? '100%';
  }
}
