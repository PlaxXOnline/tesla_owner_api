import 'package:tesla_owner_api/models/models.dart';
import 'package:tesla_owner_api/tesla_owner_api.dart';

class Example {
  var teslaAPIAuth = TeslaAPI.auth();
  late TeslaAPI teslaAPI;
  late TeslaAuthToken token;

  _auth() async {
    token = await teslaAPIAuth.auth
        .getAccessToken('email', 'password', 'clientId', 'clientSecret');
    var response = await teslaAPIAuth.auth.revokeAccessToken('accessToken');
  }

  _user() async {
    teslaAPI = TeslaAPI(token);
    var powerwallOrderEntryData =
        await teslaAPI.user.getPowerwallOrderEntryData();
    var onboardingData = await teslaAPI.user.getOnboardingData();
    var referralData = await teslaAPI.user.getReferralData();
    var deviceKeyResponse =
        await teslaAPI.user.sendDeviceKey('your_device_key_here');
    var commandTokenResponse =
        await teslaAPI.user.sendCommandToken('your_command_token_here');
  }

  _products() async {
    teslaAPI = TeslaAPI(token);
    var productsList =
        await teslaAPI.products.getProducts('your_command_token_here');
  }

  _vehicles() async {
    teslaAPI = TeslaAPI(token);
    VehicleList allVehicles = await teslaAPI.vehicles.getAllVehicles();
    Vehicle specificVehicle =
        await teslaAPI.vehicles.getSpecificVehicle('your_vehicle_id_here');

    //State and Settings
    Vehicle legacyVehicleData =
        await teslaAPI.vehicles.getLegacyVehicleData('your_vehicle_id_here');
    Vehicle vehicleData =
        await teslaAPI.vehicles.getVehicleData('your_vehicle_id_here');
    Vehicle vehicleServiceData =
        await teslaAPI.vehicles.getVehicleServiceData('your_vehicle_id_here');
    bool isMobileEnabled =
        await teslaAPI.vehicles.isMobileEnabled('your_vehicle_id_here');
    ChargeState chargeState =
        await teslaAPI.vehicles.getChargeState('your_vehicle_id_here');
    ClimateState climateState =
        await teslaAPI.vehicles.getClimateState('your_vehicle_id_here');
    DriveState driveState =
        await teslaAPI.vehicles.getDriveState('your_vehicle_id_here');
    GuiSettings guiSettings =
        await teslaAPI.vehicles.getGUISettings('your_vehicle_id_here');

    //Commands
    ResponseModel wakeUp =
        await teslaAPI.vehicles.commands.wakeUp('your_vehicle_id_here');
    ResponseModel unlockDoors =
        await teslaAPI.vehicles.commands.unlockDoors('your_vehicle_id_here');
    ResponseModel lockDoors =
        await teslaAPI.vehicles.commands.lockDoors('your_vehicle_id_here');
    ResponseModel honkHorn =
        await teslaAPI.vehicles.commands.honkHorn('your_vehicle_id_here');
    ResponseModel flashLights =
        await teslaAPI.vehicles.commands.flashLights('your_vehicle_id_here');
    ResponseModel startHVACSystem = await teslaAPI.vehicles.commands
        .startHVACSystem('your_vehicle_id_here');
    ResponseModel stopHVACSystem =
        await teslaAPI.vehicles.commands.stopHVACSystem('your_vehicle_id_here');
    ResponseModel setTemperature = await teslaAPI.vehicles.commands
        .setTemperature('your_vehicle_id_here', 22, 22);
    ResponseModel setChargeLimit = await teslaAPI.vehicles.commands
        .setChargeLimit('your_vehicle_id_here', 80);
    ResponseModel setMAXChargeLimit = await teslaAPI.vehicles.commands
        .setMAXChargeLimit('your_vehicle_id_here');
    ResponseModel setStandardChargeLimit = await teslaAPI.vehicles.commands
        .setStandardChargeLimit('your_vehicle_id_here');
    ResponseModel setSunRoof = await teslaAPI.vehicles.commands
        .setSunRoof('your_vehicle_id_here', SunRoofStates.open);
    ResponseModel openOrCloseTrunk = await teslaAPI.vehicles.commands
        .openOrCloseTrunk('your_vehicle_id_here');
    ResponseModel startRemoteDrive = await teslaAPI.vehicles.commands
        .startRemoteDrive('your_vehicle_id_here', 'your_password_here');
    ResponseModel openChargePort =
        await teslaAPI.vehicles.commands.openChargePort('your_vehicle_id_here');
    ResponseModel closeChargePort = await teslaAPI.vehicles.commands
        .closeChargePort('your_vehicle_id_here');
    ResponseModel startCharging =
        await teslaAPI.vehicles.commands.startCharging('your_vehicle_id_here');
    ResponseModel stopCharging =
        await teslaAPI.vehicles.commands.stopCharging('your_vehicle_id_here');
    ResponseModel setValetMode = await teslaAPI.vehicles.commands
        .setValetMode('your_vehicle_id_here', true, 1234);
    ResponseModel resetValetPIN =
        await teslaAPI.vehicles.commands.resetValetPIN('your_vehicle_id_here');
    ResponseModel activateSpeedLimit = await teslaAPI.vehicles.commands
        .activateSpeedLimit('your_vehicle_id_here');
    ResponseModel deactivateSpeedLimit = await teslaAPI.vehicles.commands
        .deactivateSpeedLimit('your_vehicle_id_here');
    ResponseModel setSpeedLimit =
        await teslaAPI.vehicles.commands.setSpeedLimit('your_vehicle_id_here');
    ResponseModel clearSpeedLimitPIN = await teslaAPI.vehicles.commands
        .clearSpeedLimitPIN('your_vehicle_id_here');
  }
}
