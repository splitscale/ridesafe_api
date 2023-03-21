import 'package:ridesafe_core/device/device.dart';
import 'package:ridesafe_core/device/paired_devices/device_paired_interactor.dart';

class PairedDevicesController {
  final DevicePairedInteractor _interactor;

  PairedDevicesController(this._interactor);

  Future<List<Device>> getPairedDevices() async {
    return await _interactor.getPairedDevices();
  }
}
