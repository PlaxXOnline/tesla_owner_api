import 'package:tesla_owner_api/models/models.dart';

class VehicleList {
  final List<Vehicle> response;
  final int count;

  VehicleList({
    required this.response,
    required this.count,
  });

  factory VehicleList.fromJson(Map<String, dynamic> json) {
    return VehicleList(
      response:
          (json['response'] as List).map((i) => Vehicle.fromJson(i)).toList(),
      count: json['count'],
    );
  }
}
