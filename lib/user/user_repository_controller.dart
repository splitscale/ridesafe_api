import 'package:ridesafe_core/repositories/user_repository.dart';
import 'package:ridesafe_core/user/create/create_user_interactor.dart';
import 'package:ridesafe_core/user/get/get_user_by_id_interactor.dart';
import 'package:ridesafe_core/user/get/get_user_by_username_interactor.dart';
import 'package:ridesafe_core/user/user.dart';
import 'package:ridesafe_core/user/user_request.dart';

class UserRepositoryController {
  final CreateUserInteractor _createUserInteractor;
  final GetUserByUsernameInteractor _getUserByUsernameInteractor;
  final GetUserByIdInteractor _getUserByByIdInteractor;

  UserRepositoryController(UserRepository repository)
      : _createUserInteractor = CreateUserInteractor(repository),
        _getUserByUsernameInteractor = GetUserByUsernameInteractor(repository),
        _getUserByByIdInteractor = GetUserByIdInteractor(repository);

  User create(String username) {
    return _createUserInteractor.create(UserRequest(username));
  }

  User getById(String id) {
    return _getUserByByIdInteractor.getById(id);
  }

  User getByUsername(String username) {
    return _getUserByUsernameInteractor.getByUsername(username);
  }
}
