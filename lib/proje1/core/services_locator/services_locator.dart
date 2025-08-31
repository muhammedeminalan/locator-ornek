import 'package:get/get.dart';

import '../services/all_dispose_services.dart';
import '../services/database_helper.dart';
import '../services/web_services.dart';

abstract class Manager {
  void dispose<T>();
}

mixin IServicesLocator {
  T fetch<T extends Manager>();
}

class ServicesLocator extends Manager with IServicesLocator {
  final Map<dynamic, Function> _servisler;
  final Map<dynamic, Manager> _depo = {};
  static get init => _init();
  ServicesLocator({required Map<dynamic, Function> servisler})
    : _servisler = servisler;
  @override
  void dispose<T>() {
    final Manager servis = _depo[T]!;
    servis.dispose();
    _depo.remove(T);
  }

  Manager _add(T) {
    return _depo[T] = _servisler[T]!.call();
  }

  @override
  T fetch<T extends Manager>() {
    return _depo.containsKey(T) ? _depo[T] as T : _add(T) as T;
  }
}

_init() {
  Get.put<ServicesLocator>(
    ServicesLocator(
      servisler: {
        WebService: () => WebService.instance,
        DatabaseHelper: () => DatabaseHelper.instance,

        AllDisposeServices:
            () => AllDisposeServices(
              servisler: [WebService.instance, DatabaseHelper.instance],
            ),
      },
    ),
    permanent: true,
  );
}

class Deneme {
  Map<dynamic, Manager> maps = {
    WebService: WebService.instance,
    DatabaseHelper: DatabaseHelper.instance,
  };

  Map<String, dynamic> maps2 = {"w": 1, "d": 2};
  void add() {
    maps2["l"] = 3;
  }
}
