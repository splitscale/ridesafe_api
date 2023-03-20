import 'package:ridesafe_cloud_database_impl/repositories/user_repository_interactor.dart';

import 'user/user_controller_config.dart';

class ApiConfig {
  final UserController _userControllerConfig;

  ApiConfig()
      : _userControllerConfig = UserController(UserRepositoryInteractor());

  UserController get userController {
    return _userControllerConfig;
  }
}
