import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.acme().fontFamily,
        appBarTheme: const AppBarTheme(
          elevation: 0.0,
        ),
      );
}
