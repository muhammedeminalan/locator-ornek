import 'package:flutter/material.dart';
import 'package:flutter_application_1/proje1/core/app_initializer.dart';
import 'package:flutter_application_1/proje1/views/home_page_proje1.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  AppInitializer.servicesLocatorInit;

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePageProje1(),
    );
  }
}
