import 'api_config.dart';
import 'user/user_controller_config.dart';

class Api {
  late ApiConfig _config;

  Api.initialize() {
    _config = ApiConfig();
  }

  UserController get user => _config.userController;
}

// usage

// final api = Api.initialize();

// final User some = api.user.create(UserRequest('username'));
// final User finds = api.user.getById(id);
