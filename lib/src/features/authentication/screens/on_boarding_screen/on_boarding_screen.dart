import 'package:city_buddy/src/constants/colors.dart';
import 'package:city_buddy/src/features/authentication/contollers/on_boarding_controller.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final obcontroller = OnBoardingController();

    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: PageView(
              controller: obcontroller.controller,
              children: obcontroller.children,
            ),
          ),
          Positioned(
            bottom: 70.0,
            left: 0,
            child: Container(
              margin: const EdgeInsets.only(left: 35.0),
              child: ElevatedButton(
                onPressed: () {
                  obcontroller.animateToNextSlide();
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(20.0), // Set border radius
                  ),
                  padding: const EdgeInsets.only(
                      left: 45.0, right: 45.0, top: 12.0, bottom: 12.0),
                  backgroundColor: tPrimaryColor, // Set background color
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Next',
                      style: TextStyle(
                        color: tBgColor,
                        fontSize: 16,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward_ios, color: tBgColor, size: 12),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              top: 50,
              right: 20,
              child: TextButton(
                  onPressed: () {
                    obcontroller.skip();
                  },
                  child: const Text(
                    "Skip",
                    style: TextStyle(color: tTextDeath),
                  ))),
          Positioned(
            bottom: 280.0,
            child: Container(
              margin: const EdgeInsets.only(left: 35.0),
              child: SmoothPageIndicator(
                controller: obcontroller.controller,
                count: obcontroller.children.length,
                effect: ExpandingDotsEffect(
                  dotColor: tBgColor,
                  activeDotColor: tPrimaryColor,
                  dotWidth: 10.0,
                  dotHeight: 10.0,
                ),
                onDotClicked: (index) {
                  obcontroller.OnDotClicked(index);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
