import 'package:ridesafe_core/device/device.dart';
import 'package:ridesafe_core/device/scan/device_scanning_interactor.dart';

class DeviceScanningController {
  final DeviceScanningInteractor _interactor;

  DeviceScanningController(this._interactor);

  Stream<Device> startScanning() {
    return _interactor.startScanning();
  }

  Future<void> stopScanning() {
    return _interactor.stopScanning();
  }
}
