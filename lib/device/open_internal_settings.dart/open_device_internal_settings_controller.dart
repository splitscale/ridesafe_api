import 'package:ridesafe_core/device/open_internal_settings/open_device_internal_settings.dart';

class OpenDeviceInternalSettingsController {
  final OpenDeviceInternalSettingsInteractor _interactor;

  OpenDeviceInternalSettingsController(this._interactor);

  Future<void> openInternalSettings() async {
    return _interactor.openInternalSettings();
  }
}
