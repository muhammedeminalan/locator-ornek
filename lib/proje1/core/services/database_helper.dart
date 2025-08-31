import 'package:flutter/material.dart';

import '../services_locator/services_locator.dart';

class DatabaseHelper extends Manager {
  DatabaseHelper._fake();
  static get _space => DatabaseHelper._fake();
  static get instance => _space;

  @override
  void dispose<T>() {
    debugPrint("DatabseHelper dispose edildi.");
  }

  void get bilgiVer =>
      debugPrint("DatabseHelper bilgiver metodu. Hascode:$hashCode");
}
