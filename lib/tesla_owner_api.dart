library tesla_owner_api;

import 'package:tesla_owner_api/models/models.dart';
import 'package:tesla_owner_api/src/auth/auth.dart';
import 'package:tesla_owner_api/src/energysites/energysites.dart';
import 'package:tesla_owner_api/src/powerwalls/powerwalls.dart';
import 'package:tesla_owner_api/src/products/products.dart';
import 'package:tesla_owner_api/src/user/user.dart';
import 'package:tesla_owner_api/src/vehicles/vehicles.dart';

/// The main class for accessing the Tesla Owner API.
class TeslaAPI {
  late Auth auth;
  late EnergySites energySites;
  late PowerWalls powerWalls;
  late Products products;
  late User user;
  late Vehicles vehicles;

  /// Creates a TeslaAPI instance with authentication.
  ///
  /// This constructor initializes the [auth] property for authentication purposes.
  TeslaAPI.auth() {
    auth = Auth();
  }

  /// Creates a TeslaAPI instance with an access token.
  ///
  /// This constructor initializes various properties for accessing different parts of the Tesla Owner API.
  ///
  /// - [token]: The access token to authenticate requests.
  TeslaAPI(TeslaAuthToken token) {
    energySites = EnergySites(token.accessToken);
    powerWalls = PowerWalls(token.accessToken);
    products = Products(token.accessToken);
    user = User(token.accessToken);
    vehicles = Vehicles(token.accessToken);
  }
}
