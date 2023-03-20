import 'package:ridesafe_core/user/get/get_user_by_username_interactor.dart';
import 'package:ridesafe_core/user/user.dart';

class GetUserByUsernameController {
  final GetUserByUsernameInteractor _interactor;

  GetUserByUsernameController(this._interactor);

  User getByUsername(String username) {
    return _interactor.getByUsername(username);
  }
}
