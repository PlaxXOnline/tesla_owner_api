import 'package:tesla_owner_api/models/models.dart';

/// Defines the `VehicleList` data model class.
///
/// This class represents a list of Tesla vehicles along with a
/// count of how many vehicles are present in the list.
class VehicleList {
  /// List of [Vehicle] instances.
  ///
  /// Each instance in this list represents a single Tesla vehicle
  /// and encapsulates all the data related to that vehicle.
  final List<Vehicle> response;

  /// The count of vehicles in the list.
  final int count;

  /// Creates a new instance of the [VehicleList].
  ///
  /// Takes in a list of [Vehicle] instances and the count of vehicles
  /// as required parameters.
  VehicleList({
    required this.response,
    required this.count,
  });

  /// Constructs a new [VehicleList] instance from a map.
  ///
  /// This constructor is typically used for constructing a new
  /// [VehicleList] instance from a JSON object that has been
  /// deserialized into a map. The map keys correspond to the
  /// property names of [VehicleList] and the map values are the
  /// respective values of these properties.
  factory VehicleList.fromJson(Map<String, dynamic> json) {
    return VehicleList(
      response:
          (json['response'] as List).map((i) => Vehicle.fromJson(i)).toList(),
      count: json['count'],
    );
  }
}
