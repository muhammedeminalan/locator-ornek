import 'package:flutter/material.dart';

import '../services_locator/services_locator.dart';

class WebService extends Manager {
  WebService._fake();
  static get _space => WebService._fake();
  static get instance => _space;
  @override
  void dispose<T>() {
    debugPrint("WebService dispose edildi.");
  }

  void get bilgiVer =>
      debugPrint("Webservis bilgiver metodu. Hascode:$hashCode");
}
