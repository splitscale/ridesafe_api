import 'package:ridesafe_api/device/device_service_controller.dart';
import 'package:ridesafe_api/permission/permission_service_controller.dart';
import 'package:ridesafe_api/user/user_repository_controller_switcher.dart';
import 'package:ridesafe_core/connected_device/connected_device.dart';

import 'api_endpoints.dart';
import 'device/connected_device_service_controller.dart';

class Ridesafe {
  static late ApiEndpoints _endpoints;

  static final Ridesafe _instance = Ridesafe._(); // singleton instance

  factory Ridesafe() {
    return _instance;
  }

  Ridesafe._(); // private constructor

  static Future<void> initialize() async {
    _endpoints = ApiEndpoints();
    // perform any other initialization tasks here
  }

  static UserRepositoryControllerSwitcher get user {
    return _endpoints.userController;
  }

  static DeviceServiceController<Future<BluetoothState>, BluetoothConnection>
      get bluetooth {
    return _endpoints.deviceController;
  }

  static PermissionServiceController get permissions {
    return _endpoints.permissionController;
  }

  static ConnectedDeviceServiceController getConnectedDeviceController(
      ConnectedDevice<BluetoothConnection> connectedDevice) {
    return _endpoints.getConnectedDeviceController(connectedDevice);
  }
}

// usage

// main() {
//   // initialize the controller
//   Api.initialize();
// }

// server() {
//   final UserRepositoryController db = Api.userController.server;

//   final User some = db.create('username');
//   final User finds = db.getById('someID');
// }

// local() {
//   final UserRepositoryController db = Api.userController.local;

//   final User some = db.create('username');
//   final User finds = db.getById('someID');
// }
