import 'package:ridesafe_core/device/device.dart';
import 'package:ridesafe_core/device/pairing/device_pairing_interactor.dart';

class DevicePairingController {
  final DevicePairingInteractor _interactor;

  DevicePairingController(this._interactor);

  Future<bool> pair(Device device, String pin) {
    return _interactor.pair(device, pin);
  }

  Future<bool> isPaired(Device device) {
    return _interactor.isPaired(device);
  }
}
