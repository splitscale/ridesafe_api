import 'package:ridesafe_core/connected_device/connected_device.dart';
import 'package:ridesafe_core/device/enable_service/device_enable_service_interactor.dart';

class EnableDeviceServiceController {
  final DeviceEnableServiceInteractor _interactor;

  EnableDeviceServiceController(this._interactor);

  Future<void> enableService() async {
    return await _interactor.enableService();
  }
}
