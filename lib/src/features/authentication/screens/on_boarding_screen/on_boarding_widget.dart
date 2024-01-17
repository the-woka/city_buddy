import 'package:city_buddy/src/constants/colors.dart';
import 'package:city_buddy/src/constants/sizes.dart';
import 'package:city_buddy/src/features/authentication/models/on_boarding_model.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({super.key, required this.model});

  final OnBoardingModel model;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(model.image),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.5),
            BlendMode.darken,
          ),
        ),
      ),
      child: Stack(
        children: [
          Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                margin: const EdgeInsets.only(bottom: 90.0),
                padding: const EdgeInsets.all(40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(model.title,
                        style: GoogleFonts.comfortaa(
                          textStyle: TextStyle(
                              color: tBgColor,
                              fontSize: tTitleSize,
                              fontWeight: FontWeight.w900),
                        )),
                    Text(model.subTitle,
                        style: GoogleFonts.comfortaa(
                          textStyle: TextStyle(
                              color: tBgColor, fontSize: tSubtitleSize),
                        )),
                  ],
                ),
              )),
        ],
      ),
    );
  }
}
