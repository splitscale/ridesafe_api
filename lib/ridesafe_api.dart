import 'package:ridesafe_api/device/device_service_controller.dart';
import 'package:ridesafe_api/user/user_repository_controller_switcher.dart';

import 'api_endpoints.dart';

class Ridesafe {
  static late ApiEndpoints _endpoints;

  static void initialize() {
    _endpoints = ApiEndpoints();
  }

  static UserRepositoryControllerSwitcher get user {
    return _endpoints.userController;
  }

  static DeviceServiceController get bluetooth {
    return _endpoints.deviceController;
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
