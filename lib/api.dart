import 'package:ridesafe_api/user/user_repository_controller_config.dart';

import 'server_config.dart';

class Api {
  static late ServerConfig _config;

  static void initialize() {
    _config = ServerConfig();
  }

  static UserRepositoryControllerConfig get userController =>
      _config.userController;
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
