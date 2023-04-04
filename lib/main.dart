import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_pokedex/pages/home/home_bindings.dart';
import 'package:get_pokedex/pages/home/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: [
        GetPage(
          binding: HomeBindings(),
          name: '/',
          page: () => const HomePage(),
        ),
      ],
    );
  }
}
