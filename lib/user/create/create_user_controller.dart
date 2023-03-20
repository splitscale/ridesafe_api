import 'package:ridesafe_core/user/create/create_user_interactor.dart';
import 'package:ridesafe_core/user/user.dart';
import 'package:ridesafe_core/user/user_request.dart';

class CreateUserController {
  final CreateUserInteractor _interactor;

  CreateUserController(this._interactor);

  User create(UserRequest request) {
    return _interactor.create(request);
  }
}
