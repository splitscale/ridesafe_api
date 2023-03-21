import 'package:ridesafe_api/user/user_repository_controller_switcher.dart';

import 'api_endpoints.dart';

class Api {
  static late ApiEndpoints _config;

  static void initialize() {
    _config = ApiEndpoints();
  }

  static UserRepositoryControllerSwitcher get userController {
    return _config.userController;
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
