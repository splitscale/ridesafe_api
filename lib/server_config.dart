import 'package:ridesafe_api/user/user_repository_controller_config.dart';

class ServerConfig {
  final UserRepositoryControllerConfig _userRepositoryControllerConfig;

  ServerConfig()
      : _userRepositoryControllerConfig = UserRepositoryControllerConfig();

  UserRepositoryControllerConfig get userController {
    return _userRepositoryControllerConfig;
  }
}
