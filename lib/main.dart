import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learngetx/mvvm/view/splash_screen.dart';
import 'package:learngetx/screens/favourite_fruits_screen.dart';
import 'package:learngetx/screens/image_pick_screen.dart';

void main() async{
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
