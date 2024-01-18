import 'package:city_buddy/src/features/authentication/screens/welcome/welcome_screen.dart';
import 'package:get/get.dart';
import 'package:city_buddy/src/features/authentication/screens/on_boarding_screen/on_boarding_screen.dart';

class SplashScreenController extends GetxController {
  static SplashScreenController get find => Get.find();

  Future nextPage() async {
    await Future.delayed(const Duration(milliseconds: 5000));
    Get.to(const WelcomeScreen());
  }
}
