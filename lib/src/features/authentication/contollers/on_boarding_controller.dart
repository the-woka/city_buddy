import 'package:city_buddy/src/constants/image_strings.dart';
import 'package:city_buddy/src/constants/text_strings.dart';
import 'package:city_buddy/src/features/authentication/models/on_boarding_model.dart';
import 'package:city_buddy/src/features/authentication/screens/on_boarding_screen/on_boarding_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingController extends GetxController {
  final PageController controller = PageController();

  final children = [
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: tOnBoarding1,
          title: tOnBoardingTitle1,
          subTitle: tOnBoardingSubTitle1),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: tOnBoarding2,
          title: tOnBoardingTitle2,
          subTitle: tOnBoardingSubTitle2),
    ),
    OnBoardingPageWidget(
      model: OnBoardingModel(
          image: tOnBoarding3,
          title: tOnBoardingTitle3,
          subTitle: tOnBoardingSubTitle3),
    ),
  ];

  animateToNextSlide() {
    int nextPageIndex = (controller.page! + 1).toInt();
    controller.animateToPage(
      nextPageIndex,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  skip() {
    controller.animateToPage(
      children.length - 1,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }

  OnDotClicked(index) {
    controller.animateToPage(
      index,
      duration: Duration(milliseconds: 500),
      curve: Curves.easeInOut,
    );
  }
}
