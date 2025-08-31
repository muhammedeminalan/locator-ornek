import 'package:flutter/material.dart';
import 'package:flutter_application_1/proje1/core/services/all_dispose_services.dart';
import 'package:flutter_application_1/proje1/core/services/database_helper.dart';
import 'package:flutter_application_1/proje1/core/services/web_services.dart';
import 'package:get/get.dart';

import '../core/services_locator/services_locator.dart';

class HomePageProje1 extends StatelessWidget {
  HomePageProje1({super.key});
  final locator = Get.find<ServicesLocator>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: _buildBody(context),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Column(
      children: [
        ...AA
            .adaptor<int, String>([1, 2, 3, 4], (item) => item.toString())
            .map((e) => Text(e)),

        ElevatedButton(
          onPressed: () {
            locator.fetch<WebService>().bilgiVer;
          },
          child: Text("Webservis"),
        ),
        ElevatedButton(
          onPressed: () {
            locator.fetch<DatabaseHelper>().bilgiVer;
          },
          child: Text("DatabaseHelper"),
        ),

        ElevatedButton(
          onPressed: () {
            locator.fetch<AllDisposeServices>().dispose();
          },
          child: Text("All Dispose"),
        ),
      ],
    );
  }
}

class AA {
  static List<R> adaptor<T, R>(List<T> liste, R Function(T value) converter) {
    return liste.map((T item) => converter(item)).toList();
  }
}
