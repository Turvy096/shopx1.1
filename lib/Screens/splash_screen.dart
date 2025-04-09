import 'package:api/Resources/controller_app.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final SplashController controller = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Obx(() {
          return controller.showLogo.value
              ? Image.asset(
                  'assets/shopX.png',
                  width: 150,
                )
              : Lottie.asset(
                  'assets/trolly.json',
                  width: 200,
                );
        }),
      ),
    );
  }
}
