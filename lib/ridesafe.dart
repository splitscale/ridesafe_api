import 'package:ridesafe_api/api_endpoints.dart';
import 'ridesafe_controller.dart';

class Ridesafe {
  static RidesafeController? _binder;

  static Future<void> initialize() async {
    do {
      _binder = RidesafeController(ApiEndpoints());
      await Future.delayed(const Duration(seconds: 1));
    } while (_binder == null);
  }

  static RidesafeController get controller {
    if (_binder == null) {
      throw Exception('RidesafeControllers is not initialized');
    }
    return _binder!;
  }
}
