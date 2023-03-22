import 'package:ridesafe_core/connected_device/connected_device.dart';
import 'package:ridesafe_core/device/connection/device_connecting_interactor.dart';
import 'package:ridesafe_core/device/device.dart';
import 'package:ridesafe_core/device/enable_service/device_enable_service_interactor.dart';
import 'package:ridesafe_core/device/open_internal_settings/open_device_internal_settings.dart';
import 'package:ridesafe_core/device/paired_devices/device_paired_interactor.dart';
import 'package:ridesafe_core/device/pairing/device_pairing_interactor.dart';
import 'package:ridesafe_core/device/scan/device_scanning_interactor.dart';
import 'package:ridesafe_core/device/service_state/device_service_state_interactor.dart';
import 'package:ridesafe_core/services/device_service.dart';

class DeviceServiceController<R1, CONN> {
  final ConnectDeviceInteractor<R1, CONN> _connectDevice;
  final DeviceEnableServiceInteractor _enableService;
  final OpenDeviceInternalSettingsInteractor _openSettings;
  final DevicePairedInteractor _pairedDevices;
  final DevicePairingInteractor _devicePairing;
  final DeviceScanningInteractor _deviceScanning;
  final DeviceServiceStateInteractor _deviceService;

  DeviceServiceController(DeviceService<R1, CONN> service)
      : _connectDevice = ConnectDeviceInteractor(service),
        _enableService = DeviceEnableServiceInteractor(service),
        _openSettings = OpenDeviceInternalSettingsInteractor(service),
        _pairedDevices = DevicePairedInteractor(service),
        _devicePairing = DevicePairingInteractor(service),
        _deviceScanning = DeviceScanningInteractor(service),
        _deviceService = DeviceServiceStateInteractor(service);

  Future<ConnectedDevice<CONN>> connect(Device device) async {
    return await _connectDevice.connect(device);
  }

  Future<void> enableService() async {
    return _enableService.enableService();
  }

  Future<void> openInternalSettings() async {
    return _openSettings.openInternalSettings();
  }

  Future<List<Device>> getPairedDevices() async {
    return await _pairedDevices.getPairedDevices();
  }

  Future<bool> pair(Device device, String pin) {
    return _devicePairing.pair(device, pin);
  }

  Future<bool> isPaired(Device device) {
    return _devicePairing.isPaired(device);
  }

  Stream<Device> startScanning() {
    return _deviceScanning.startScanning();
  }

  Future<void> stopScanning() {
    return _deviceScanning.stopScanning();
  }

  Future<bool> isServiceAvailable() {
    return _deviceService.isServiceAvailable();
  }

  Future<bool> isServiceEnabled() {
    return _deviceService.isServiceEnabled();
  }

  R1 getServiceState() {
    return _deviceService.getServiceState();
  }
}
