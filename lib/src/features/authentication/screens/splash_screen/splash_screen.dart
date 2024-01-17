import 'package:city_buddy/src/features/authentication/contollers/splash_screen_controllers.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:city_buddy/src/constants/colors.dart';
import 'package:city_buddy/src/constants/image_strings.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.nextPage();
    return const Scaffold(
      backgroundColor: tPrimaryColor,
      body: Center(
        child: Image(
          image: AssetImage(tSplashIconD),
          height: 150,
          width: 150,
        ),
      ),
    );
  }
}
