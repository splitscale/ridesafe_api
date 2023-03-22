import 'package:ridesafe_api/device/device_service_controller.dart';
import 'package:ridesafe_api/permission/permission_service_controller.dart';
import 'package:ridesafe_api/user/user_repository_controller_switcher.dart';
import 'package:ridesafe_bluetooth_impl/service/bluetooth_service.dart';
import 'package:ridesafe_core/permission/request/permission_request_interactor.dart';
import 'package:ridesafe_core/permission/state/permission_state_interactor.dart';
import 'package:ridesafe_permission_impl/services/bluetooth_permission_service.dart';

class ApiEndpoints {
  final UserRepositoryControllerSwitcher _userRepositorySwitcher;
  final DeviceServiceController _serviceController;
  final PermissionServiceController _permissionController;

  ApiEndpoints()
      : _userRepositorySwitcher = UserRepositoryControllerSwitcher(),
        _serviceController = DeviceServiceController(BluetoothService.service),
        _permissionController = PermissionServiceController(
          PermissionRequestInteractor(BluetoothPermissionService()),
          PermissionStateInteractor(BluetoothPermissionService()),
        );

  UserRepositoryControllerSwitcher get userController {
    return _userRepositorySwitcher;
  }

  DeviceServiceController get deviceController {
    return _serviceController;
  }

  PermissionServiceController get permissionController {
    return _permissionController;
  }
}
