import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class OutlineButtonApp extends StatelessWidget {
  final double? width;
  final double? height;
  final void Function()? onPressed;
  final String title;
  const OutlineButtonApp(
      {required this.title,
      this.width,
      this.height,
      super.key,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              color: context.primaryColor,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            title,
            style: GoogleFonts.poppins(
              textStyle: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: context.primaryColor,
              ),
            ),
          ),
        ));
  }
}
