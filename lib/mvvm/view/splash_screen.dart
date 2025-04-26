import 'package:flutter/material.dart';
import 'package:learngetx/mvvm/data/app_exceptions.dart';
import 'package:learngetx/mvvm/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Splash Screen"),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Utils.toastMessage("Toast Message");
          // throw InternetException("This is me");
        },
      ),
    );
  }
}
