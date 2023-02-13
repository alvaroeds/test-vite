import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/resources/theme/colors_app.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class ThemeApp {
  static TextTheme get textThemeLight => TextTheme(
        //? title establishment
        displayLarge: GoogleFonts.poppins().getStyle(weight: FontWeight.bold),
        //? title category
        displayMedium: GoogleFonts.poppins().getStyle(weight: FontWeight.bold),
        //? title products.
        displaySmall:
            GoogleFonts.manrope().getStyle(color: const Color(0xff717171)),
        //? title menu option dashboard.
        headlineMedium:
            GoogleFonts.inter().getStyle(color: const Color(0xff717171)),
        //? description of product.
        bodySmall: GoogleFonts.manrope(),
      );

  //* ThemeData Light
  static ThemeData get light => ThemeData.light().copyWith(
        useMaterial3: true,
        textTheme: textThemeLight,
        primaryColor: ColorsApp.primaryColorLight,
        scaffoldBackgroundColor: ColorsApp.primaryBackgroundLight,
        colorScheme: const ColorScheme.light().copyWith(
          primary: ColorsApp.primaryColorLight,
        ),

        // colorScheme: ColorScheme.fromSeed(
        //   seedColor: ColorsApp.primaryColorLight,
        // ),
      );
}
