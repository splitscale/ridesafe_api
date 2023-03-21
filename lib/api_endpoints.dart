import 'package:ridesafe_api/user/user_repository_controller_switcher.dart';

class ApiEndpoints {
  final UserRepositoryControllerSwitcher _userRepositorySwitcher;

  ApiEndpoints() : _userRepositorySwitcher = UserRepositoryControllerSwitcher();

  UserRepositoryControllerSwitcher get userController {
    return _userRepositorySwitcher;
  }
}
