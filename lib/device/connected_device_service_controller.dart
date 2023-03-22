import 'package:ridesafe_core/connected_device/disconnect/connected_device_disconnect_interactor.dart';
import 'package:ridesafe_core/connected_device/listen/connected_device_listen_interactor.dart';
import 'package:ridesafe_core/connected_device/send/connected_device_send_interactor.dart';
import 'package:ridesafe_core/connected_device/state/connected_device_state_interactor.dart';
import 'package:ridesafe_core/services/connected_device_service.dart';

class ConnectedDeviceServiceController {
  final ConnectDeviceListenInteractor _listenInteractor;
  final ConnectDeviceSendInteractor _sendInteractor;
  final ConnectDeviceStateInteractor _stateInteractor;
  final ConnectDeviceDisconnectInteractor _disconnectInteractor;

  ConnectedDeviceServiceController(ConnectedDeviceService service)
      : _listenInteractor = ConnectDeviceListenInteractor(service),
        _sendInteractor = ConnectDeviceSendInteractor(service),
        _stateInteractor = ConnectDeviceStateInteractor(service),
        _disconnectInteractor = ConnectDeviceDisconnectInteractor(service);

  Future<void> disconnect() {
    return _disconnectInteractor.disconnect();
  }

  bool get isConnected {
    return _stateInteractor.isConnected;
  }

  Future<void> send(String json) {
    return _sendInteractor.send(json);
  }

  Stream<String> startListening() {
    return _listenInteractor.startListening();
  }

  Future<void> stopListening() {
    return _listenInteractor.stopListening();
  }
}
