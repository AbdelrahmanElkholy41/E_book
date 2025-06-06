import 'package:e_book/core/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'Feature/Splash/presentation/Views/splashView.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
    theme: ThemeData.dark().copyWith(

        scaffoldBackgroundColor:kPrimaryColor),

      home: const SplashView(),
    );
  }
}

