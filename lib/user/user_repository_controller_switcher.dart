import 'package:ridesafe_api/user/user_repository_controller.dart';
import 'package:ridesafe_cloud_database_impl/repositories/user_repository_interactor.dart';
import 'package:ridesafe_local_database_impl/repositories/user_repository_interactor.dart';

class UserRepositoryControllerSwitcher {
  final UserRepositoryController _userRepositoryServerController;
  final UserRepositoryController _userRepositoryLocalController;

  UserRepositoryControllerSwitcher()
      : _userRepositoryServerController =
            UserRepositoryController(UserRepositoryServerInteractor()),
        _userRepositoryLocalController =
            UserRepositoryController(UserRepositoryLocalInteractor());

  UserRepositoryController get server {
    return _userRepositoryServerController;
  }

  UserRepositoryController get local {
    return _userRepositoryLocalController;
  }
}
