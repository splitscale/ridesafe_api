import 'package:ridesafe_api/api_endpoints.dart';

import 'ridesafe_controller.dart';

class Ridesafe {
  static late RidesafeController _binder;

  static Future<void> initialize() async {
    _binder = RidesafeController(ApiEndpoints());

    await Future.delayed(const Duration(seconds: 1));
  }

  static RidesafeController get controller {
    try {
      return _binder;
    } catch (e) {
      throw Exception('RidesafeControllers is not initialized');
    }
  }
}
