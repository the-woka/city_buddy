import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';

class TTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      displayMedium: GoogleFonts.comfortaa(
        color: Colors.black87,
      ),
      titleSmall: GoogleFonts.poppins(
        color: Colors.black54,
      ),
      bodyLarge: GoogleFonts.roboto(
        color: Colors.black45,
      ));
  static TextTheme darkTextTheme = TextTheme(
      displayMedium: GoogleFonts.montserrat(
        color: Colors.grey[50],
      ),
      titleSmall: GoogleFonts.poppins(
        color: Colors.grey[100],
      ),
      bodyLarge: GoogleFonts.roboto(
        color: Colors.grey[200],
      ));
}
