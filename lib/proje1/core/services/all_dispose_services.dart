import 'package:flutter_application_1/proje1/core/services_locator/services_locator.dart';

class AllDisposeServices extends Manager {
  final List<Manager> servisler;

  AllDisposeServices({required this.servisler});
  @override
  void dispose<T>() {
    for (Manager servis in servisler) {
      servis.dispose();
    }
  }
}
