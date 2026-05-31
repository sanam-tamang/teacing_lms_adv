import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:teaching_lms_adv/core/theme/color_pallet.dart';

class AppThemeMode {
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      textTheme: TextTheme.of(
        context,
      ).copyWith(titleLarge: GoogleFonts.montserrat(fontSize: 16)),
      colorScheme: ColorScheme.fromSeed(seedColor: ColorPallet.primary),
    );
  }

  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      textTheme: GoogleFonts.montserratTextTheme(Theme.of(context).textTheme),

      colorScheme: ColorScheme.fromSeed(
        brightness: Brightness.dark,
        seedColor: ColorPallet.primary,
      ),
    );
  }
}
