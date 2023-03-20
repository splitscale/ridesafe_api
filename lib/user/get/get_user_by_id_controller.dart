import 'package:ridesafe_core/user/get/get_user_by_id_interactor.dart';
import 'package:ridesafe_core/user/user.dart';

class GetUserByIdController {
  final GetUserByIdInteractor _interactor;

  GetUserByIdController(this._interactor);

  User getById(String id) {
    return _interactor.getById(id);
  }
}
