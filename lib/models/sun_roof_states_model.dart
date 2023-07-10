enum SunRoofStates {
  open,
  closed,
  comfort,
  vent,
  move,
}

class SunRoofPercentage {
  static Map<SunRoofStates, String> stateValue = {
    SunRoofStates.open: '100%',
    SunRoofStates.closed: '0%',
    SunRoofStates.comfort: '80%',
    SunRoofStates.vent: '15%',
    SunRoofStates.move: '0%',
  };

  SunRoofPercentage(int percentage) {
    stateValue[SunRoofStates.move] = '$percentage%';
  }

  String getSunRoofPercentage(SunRoofStates state) {
    return stateValue[state] ?? '100%';
  }
}
