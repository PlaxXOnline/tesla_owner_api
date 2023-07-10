# Tesla Owner API

## Warning

Please note that this is an unofficial API, using https://www.teslaapi.io/, and therefore, we cannot guarantee its functionality. It's recommended to use it with caution as changes in the official API can break this library. Always ensure you're adhering to Tesla's terms of service while using this API.

[![pub package](https://img.shields.io/pub/v/tesla_owner_api.svg)](https://pub.dev/packages/tesla_owner_api) [![GitHub stars](https://img.shields.io/github/stars/PlaxXOnline/tesla_owner_api.svg?style=social&label=Star)](https://github.com/PlaxXOnline/tesla_owner_api)

The `TeslaAPI` is the main class for accessing the Tesla Owner API. It includes properties for authentication and for accessing different parts of the Tesla Owner API.

## Properties
- `auth`: An instance of the `Auth` class used for authentication.
- `energySites`: An instance of the `EnergySites` class used for interacting with energy sites.
- `powerWalls`: An instance of the `PowerWalls` class used for interacting with Powerwalls.
- `products`: An instance of the `Products` class used for interacting with Tesla products.
- `user`: An instance of the `User` class used for interacting with the user's account.
- `vehicles`: An instance of the `Vehicles` class used for interacting with the user's Tesla vehicles.

## Constructors

### TeslaAPI.auth()

Creates a `TeslaAPI` instance with authentication. This constructor initializes the `auth` property for authentication purposes.

#### Usage

```dart
var teslaAPIAuth = TeslaAPI.auth();
String accessToken = teslaAPIAuth.getAccessToken(String email, String password,
    String clientId, String clientSecret);
```

### TeslaAPI(String token)

Creates a `TeslaAPI` instance with an access token. This constructor initializes various properties for accessing different parts of the Tesla Owner API using the provided access token.

#### Parameters 

- `token`: The access token to authenticate requests.

#### Usage

```dart
var teslaAPI = TeslaAPI('your_access_token_here');
```

Now you can use all the Methods like

```dart
var user = teslaAPI.user;
var energysites = teslaAPI.energysites;
var powerwalls = teslaAPI.powerwalls;
var products = teslaAPI.products;
```
## Features

<details>
  <summary>User</summary>

#### Future<Response> getPowerwallOrderEntryData()

Fetches Powerwall order entry data for a user. Returns a `Response` object containing the data. Throws an `Exception` if the request fails.

```dart
var powerwallOrderEntryData = await teslaAPI.user.getPowerwallOrderEntryData();
```

#### Future<Response> getOnboardingData()

Fetches onboarding data for a user. Returns a `Response` object containing the data. Throws an `Exception` if the request fails.

```dart
var onboardingData = await teslaAPI.user.getOnboardingData();
```

#### Future<Response> getReferralData()

Fetches referral data for a user. Returns a `Response` object containing the data. Throws an `Exception if the request fails.

```dart
var referralData = await teslaAPI.user.getReferralData();
```

#### Future<Response> sendDeviceKey(String deviceKey)

Sends a device key. Returns a `Response` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `deviceKey`: The device key to be sent.

```dart
var response = await teslaAPI.user.sendDeviceKey('your_device_key_here');
```


#### Future<Response> sendCommandToken(String commandToken)

Sends a command token. Returns a `Response` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `commandToken`: The command token to be sent.

```dart
var response = await teslaAPI.user.sendCommandToken('your_command_token_here');
```
</details>
<details>
  <summary>EnergySites</summary>

### State and Settings

### Commands

</details>
<details>
  <summary>PowerWalls</summary>

## State and Settings

#### Future<Response> getBatteryStatus(int batteryId)

Fetch the current Battery Status. Returns a `Response` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `batteryId`: The ID of the battery.

```dart
Response batteryStatus = await teslaAPI.powerwalls.commands.getBatteryStatus('your_battery_id_here');
```

#### Future<Response> getBatteryData(int batteryId)

Fetch the current Battery Data. Returns a `Response` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `batteryId`: The ID of the battery.

```dart
Response batteryData = await teslaAPI.powerwalls.commands.getBatteryData('your_battery_id_here');
```

#### Future<Response> getBatteryPowerTimeSeriesData(int batteryId)

Fetch the Battery Power Time-series Data. Returns a `Response` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `batteryId`: The ID of the battery.

```dart
Response batteryPowerTimeSeriesData = await teslaAPI.powerwalls.commands.getBatteryPowerTimeSeriesData('your_battery_id_here');
```

#### Future<Response> getBatteryEnergyTimeSeriesData(int batteryId)

Fetch the Battery Power Time-series Data. Returns a `Response` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `batteryId`: The ID of the battery.

```dart
Response batteryEnergyTimeSeriesData = await teslaAPI.powerwalls.commands.getBatteryEnergyTimeSeriesData('your_battery_id_here');
```

## Commands

#### Future<Response> backupBatteryReserve(int batteryId)

Backup the Battery Reserve. Returns a `Response` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `batteryId`: The ID of the battery.

```dart
Response backupBatteryReserve = await teslaAPI.powerwalls.commands.batterySiteName('your_battery_id_here');
```

#### Future<Response> batterySiteName(int batteryId)

Fetches the site name of a specific battery. Returns a `Response` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `batteryId`: The ID of the battery.

```dart
Response batterySiteName = await teslaAPI.powerwalls.commands.backupBatteryReserve('your_battery_id_here');
```

#### Future<Response> batteryOperationMode(int batteryId)

Fetches the operation mode of a specific battery. Returns a `Response` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `batteryId`: The ID of the battery.

```dart
Response batteryOperationMode = await teslaAPI.powerwalls.commands.batteryOperationMode('your_battery_id_here');
```

</details>
<details>
  <summary>Products</summary>

#### Future<Response> getProducts()

Fetches a list of products. Returns a `Response` object containing the data. Throws an `Exception if the request fails.

```dart
var productsList = await teslaAPI.products.getProducts();
```
</details>
<details>
  <summary>Vehicles</summary>

## List

#### Future<VehicleList> getAllVehicles()

Fetches a list of vehicles. Returns a `VehicleList` object containing the data. Throws an `Exception if the request fails.

```dart
VehicleList allVehicles = await teslaAPI.vehicles.getAllVehicles();
```

#### Future<Vehicle> getSpecificVehicle(String id)

Fetches data for a specific vehicle. Returns a `Vehicle` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
Vehicle specificVehicle = await teslaAPI.vehicles.getSpecificVehicle('your_vehicle_id_here');
```

## State and Settings

#### Future<Vehicle> getLegacyVehicleData(String id)

Fetches the legacy vehicle data. Returns a `Vehicle` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
Vehicle legacyVehicleData = await teslaAPI.vehicles.getLegacyVehicleData('your_vehicle_id_here');
```

#### Future<Vehicle> getVehicleData(String id)

Fetches the vehicle data. Returns a `Vehicle` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
Vehicle vehicleData = await teslaAPI.vehicles.getVehicleData('your_vehicle_id_here');
```

#### Future<Vehicle> getVehicleServiceData(String id)

Fetches the vehicle service data. Returns a `Vehicle` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
Vehicle vehicleServiceData = await teslaAPI.vehicles.getVehicleServiceData('your_vehicle_id_here');
```

#### Future<bool> isMobileEnabled(String id)

Checks if mobile is enabled for the vehicle. Returns a bool indicating whether mobile is enabled. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
bool isMobileEnabled = await teslaAPI.vehicles.isMobileEnabled('your_vehicle_id_here');
```

#### Future<ChargeState> getChargeState(String id)

Fetches the charge state of the vehicle. Returns a `ChargeState` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ChargeState chargeState = await teslaAPI.vehicles.getChargeState('your_vehicle_id_here');
```

#### Future<ClimateState> getClimateState(String id)

Fetches the climate state of the vehicle. Returns a `ClimateState` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ClimateState climateState = await teslaAPI.vehicles.getClimateState('your_vehicle_id_here');
```

#### Future<DriveState> getDriveState(String id)

Fetches the drive state of the vehicle. Returns a `DriveState` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
DriveState driveState = await teslaAPI.vehicles.getDriveState('your_vehicle_id_here');
```

#### Future<GuiSettings> getGUISettings(String id)

Fetches the GUI settings of the vehicle. Returns a `GuiSettings` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
GuiSettings guiSettings = await teslaAPI.vehicles.getGUISettings('your_vehicle_id_here');
```


## Commands

#### Future<ResponseModel> wakeUp(String id)

Wakes up the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.wakeUp('your_vehicle_id_here');
```

#### Future<ResponseModel> unlockDoors(String id)

Unlocks the doors of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.unlockDoors('your_vehicle_id_here');
```

#### Future<ResponseModel> lockDoors(String id)

Locks the doors of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.lockDoors('your_vehicle_id_here');
```

#### Future<ResponseModel> honkHorn(String id)

Honks the horn of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.honkHorn('your_vehicle_id_here');
```

#### Future<ResponseModel> flashLights(String id)

Flashes the lights of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.flashLights('your_vehicle_id_here');
```

#### Future<ResponseModel> startHVACSystem(String id)

Starts the Air Conditioning of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.startHVACSystem('your_vehicle_id_here');
```

#### Future<ResponseModel> stopHVACSystem(String id)

Stops the Air Conditioning of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.stopHVACSystem('your_vehicle_id_here');
```

#### Future<ResponseModel> setTemperature(String id, int driverTemp, int passengerTemp)

Sets the temperature of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.
- `driverTemp`: The desired temperature for the driver in Celsius.
- `passengerTemp`: The desired temperature for the passenger in Celsius.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.setTemperature('your_vehicle_id_here', 22, 22);
```

#### Future<ResponseModel> setChargeLimit(String id, int limit)

Sets the charge limit of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.
- `limit`: The charge limit in percent.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.setChargeLimit('your_vehicle_id_here', 80);
```

#### Future<ResponseModel> setMAXChargeLimit(String id)

Sets the charge limit of the vehicle to MAX. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.setMAXChargeLimit('your_vehicle_id_here');
```

#### Future<ResponseModel> setStandardChargeLimit(String id)

Sets the charge limit of the vehicle to Standard. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.setStandardChargeLimit('your_vehicle_id_here');
```

#### Future<ResponseModel> setSunRoof(String id, SunRoofStates state)

Sets the state of the sunroof of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.
- `state`: The desired `SunRoofStates`.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.setSunRoof('your_vehicle_id_here', SunRoofStates.open);
```

#### Future<ResponseModel> openOrCloseTrunk(String id)

Opens or closes the trunk of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.openOrCloseTrunk('your_vehicle_id_here');
```

#### Future<ResponseModel> startRemoteDrive(String id, String password)

Starts vehicle key-less driving mode. The vehicle must be placed in drive within 2 minutes of the response. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.
- `password`: The password from my.teslamotors.com.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.startRemoteDrive('your_vehicle_id_here', 'your_password_here');
```

#### Future<ResponseModel> openChargePort(String id)

Opens vehicle charge port. Also unlocks the charge port if it is locked. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.openChargePort('your_vehicle_id_here');
```

#### Future<ResponseModel> closeChargePort(String id)

Closes the charge port of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.closeChargePort('your_vehicle_id_here');
```

#### Future<ResponseModel> startCharging(String id)

Starts vehicle charging. Vehicle must be plugged in, have power available, and not at charge limit. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.startCharging('your_vehicle_id_here');
```

#### Future<ResponseModel> stopCharging(String id)

Stops vehicle charging. Vehicle must be charging. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.stopCharging('your_vehicle_id_here');
```

#### Future<ResponseModel> setValetMode(String id, bool on, int pin)

Sets vehicle valet mode on or off with a PIN to disable it from within the car. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.
- `on`: Valet Mode On or Off.
- `pin`: The four-digit PIN.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.setValetMode('your_vehicle_id_here', true, 1234);
```

#### Future<ResponseModel> resetValetPIN(String id)

Resets vehicle valet PIN. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.resetValetPIN('your_vehicle_id_here');
```

#### Future<ResponseModel> activateSpeedLimit(String id)

Activates the speed limit of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.activateSpeedLimit('your_vehicle_id_here');
```

#### Future<ResponseModel> deactivateSpeedLimit(String id)

Deactivates the speed limit of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.deactivateSpeedLimit('your_vehicle_id_here');
```

#### Future<ResponseModel> setSpeedLimit(String id)

Sets the speed limit of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.setSpeedLimit('your_vehicle_id_here');
```

#### Future<ResponseModel> clearSpeedLimitPIN(String id)

Clears the speed limit PIN of the vehicle. Returns a `ResponseModel` object containing the data. Throws an `Exception if the request fails.

##### Parameters

- `id`: The ID of the vehicle.

```dart
ResponseModel response = await teslaAPI.vehicles.commands.clearSpeedLimitPIN('your_vehicle_id_here');
```

</details>