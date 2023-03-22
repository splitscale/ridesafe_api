import 'package:ridesafe_core/permission/basic_permission.dart';
import 'package:ridesafe_core/permission/request/permission_request_interactor.dart';
import 'package:ridesafe_core/permission/state/permission_state_interactor.dart';

class PermissionServiceController {
  final PermissionRequestInteractor _requestInteractor;
  final PermissionStateInteractor _stateInteractor;

  PermissionServiceController(this._requestInteractor, this._stateInteractor);

  Future<void> request() async {
    return await _requestInteractor.request();
  }

  Future<BasicPermission> get status {
    return _stateInteractor.status;
  }
}
