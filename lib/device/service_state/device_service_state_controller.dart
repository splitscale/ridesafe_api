import 'package:ridesafe_core/device/service_state/device_service_state_interactor.dart';
import 'package:ridesafe_core/services/state/service_state.dart';

class DeviceScanningController {
  final DeviceServiceStateInteractor _interactor;

  DeviceScanningController(this._interactor);

  Future<bool> isServiceAvailable() {
    return _interactor.isServiceAvailable();
  }

  Future<bool> isServiceEnabled() {
    return _interactor.isServiceEnabled();
  }

  Future<ServiceStatus> getServiceState() {
    return _interactor.getServiceState();
  }
}
