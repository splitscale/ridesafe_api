import 'package:ridesafe_core/connected_device/connected_device.dart';
import 'package:ridesafe_core/device/connection/device_connecting_interactor.dart';
import 'package:ridesafe_core/device/device.dart';

class ConnectDeviceController {
  final ConnectDeviceInteractor _interactor;

  ConnectDeviceController(this._interactor);

  Future<ConnectedDevice> connect(Device device) async {
    return await _interactor.connect(device);
  }
}
