import 'package:city_buddy/src/constants/colors.dart';
import 'package:city_buddy/src/constants/image_strings.dart';
import 'package:city_buddy/src/constants/sizes.dart';
import 'package:city_buddy/src/constants/text_strings.dart';
import 'package:city_buddy/src/utils/theme/widget_themes/custom_welcome.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScreen(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 440),
            child: Image.asset(
              tSplashIconD,
              height: 70.0,
              width: 90.0,
            ),
          ),
          Container(
            child: Text(
              tWelcomeTitle,
              style: GoogleFonts.comfortaa(
                textStyle: TextStyle(
                    color: tBgColor,
                    fontSize: tTitleSize,
                    fontWeight: FontWeight.w900),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 16),
            child: Text(
              tWelcomeMessage,
              style: GoogleFonts.comfortaa(
                textStyle: TextStyle(
                  color: tBgColor,
                  fontSize: tSubtitleSize,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 70),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      tLogin,
                      style: GoogleFonts.comfortaa(
                        color: tBgColor,
                        fontSize: tSubtitleSize,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      backgroundColor: tPrimaryColor,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {},
                    child: Text(
                      tSignUp,
                      style: GoogleFonts.comfortaa(
                        color: tBgColor,
                        fontSize: tSubtitleSize,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    style: OutlinedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                      side: BorderSide(color: tBgColor),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
