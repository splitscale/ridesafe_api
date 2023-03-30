import 'package:ridesafe_api/device/device_service_controller.dart';
import 'package:ridesafe_api/permission/permission_service_controller.dart';
import 'package:ridesafe_api/user/user_repository_controller_switcher.dart';
import 'package:ridesafe_core/connected_device/connected_device.dart';

import 'api_endpoints.dart';
import 'device/connected_device_service_controller.dart';

class RidesafeController {
  final ApiEndpoints _endpoints;

  RidesafeController(this._endpoints);

  UserRepositoryControllerSwitcher get user {
    return _endpoints.userController;
  }

  DeviceServiceController<Future<BluetoothState>, BluetoothConnection>
      get bluetooth {
    return _endpoints.deviceController;
  }

  PermissionServiceController get permissions {
    return _endpoints.permissionController;
  }

  ConnectedDeviceServiceController getConnectedDeviceController(
      ConnectedDevice<BluetoothConnection> connectedDevice) {
    return _endpoints.getConnectedDeviceController(connectedDevice);
  }
}
