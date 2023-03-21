import 'package:ridesafe_api/device/device_service_controller.dart';
import 'package:ridesafe_api/user/user_repository_controller_switcher.dart';
import 'package:ridesafe_bluetooth_impl/service/bluetooth_service.dart';

class ApiEndpoints {
  final UserRepositoryControllerSwitcher _userRepositorySwitcher;
  final DeviceServiceController _serviceController;

  ApiEndpoints()
      : _userRepositorySwitcher = UserRepositoryControllerSwitcher(),
        _serviceController = DeviceServiceController(BluetoothService.service);

  UserRepositoryControllerSwitcher get userController {
    return _userRepositorySwitcher;
  }

  DeviceServiceController get deviceController {
    return _serviceController;
  }
}
