import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class OutlineButtonApp extends StatelessWidget {
  final double? width;
  final double? height;
  final double borderWith;
  final Color? primaryColor;
  final TextStyle? style;
  final void Function()? onPressed;
  final String title;
  const OutlineButtonApp(
      {required this.title,
      this.width = 1.0,
      this.height,
      this.borderWith = 1.0,
      super.key,
      this.onPressed,
      this.primaryColor,
      this.style});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: width,
        height: height,
        child: OutlinedButton(
          onPressed: onPressed,
          style: OutlinedButton.styleFrom(
            side: BorderSide(
              width: borderWith,
              color: primaryColor ?? context.primaryColor,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(
            title,
            style: style ??
                GoogleFonts.poppins(
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
