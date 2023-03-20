import 'package:ridesafe_api/user/user_repository_controller_config.dart';
import 'package:ridesafe_core/user/user.dart';

import 'server_config.dart';

class Api {
  late ServerConfig _config;

  Api.initialize() {
    _config = ServerConfig();
  }

  UserRepositoryControllerConfig get user => _config.userController;
}

// usage

final api = Api.initialize();

final User some = api.user.server.create('username');
final User finds = api.user.server.getById('someID');
