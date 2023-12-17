import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

abstract class AppTheme {
  static ThemeData themeData(Brightness brightness) => ThemeData(
        fontFamily: GoogleFonts.poppins().fontFamily,
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color(0xff6e78f7), brightness: brightness),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          systemOverlayStyle: SystemUiOverlayStyle(
            // Status bar color
            statusBarColor:
                brightness == Brightness.light ? Colors.white : Colors.black,

            // Status bar brightness (optional)
            statusBarIconBrightness: brightness == Brightness.light
                ? Brightness.dark
                : Brightness.light, // For Android (dark icons)
            statusBarBrightness: brightness,
          ),
        ),
      );
}
