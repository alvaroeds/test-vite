import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class ElevatedButtonApp extends StatelessWidget {
  final double? width;
  final double? height;
  final String title;
  final TextStyle? style;
  final void Function()? onPressed;
  final Widget? icon;
  const ElevatedButtonApp(
      {required this.title,
      this.icon,
      this.width,
      this.height,
      this.style,
      super.key,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          backgroundColor: context.primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        icon: icon ?? const SizedBox.shrink(),
        onPressed: onPressed,
        label: Text(
          title,
          style: style ??
              GoogleFonts.poppins(
                textStyle: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
        ),
      ),
    );
  }
}
