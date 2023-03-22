import 'package:ridesafe_core/permission/request/permission_request_interactor.dart';
import 'package:ridesafe_core/permission/state/permission_state_interactor.dart';
import 'package:ridesafe_permission_impl/types/bluetooth_permissions.dart';

class PermissionServiceController {
  final PermissionRequestInteractor<BluetoothPermissionMap> _requestInteractor;
  final PermissionStateInteractor<Future<BluetoothPermission>> _stateInteractor;

  PermissionServiceController(this._requestInteractor, this._stateInteractor);

  BluetoothPermissionMap request() async {
    return await _requestInteractor.request();
  }

  Future<BluetoothPermission> get status async {
    return _stateInteractor.status;
  }
}
