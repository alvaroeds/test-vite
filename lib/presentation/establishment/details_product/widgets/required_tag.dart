import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/presentation/establishment/home/widgets/widgets.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

const _primaryColor = Color(0xff878F9B);
const _secondaryColor = Color(0xffF5F5F5);

class RequiredTag extends StatelessWidget {
  const RequiredTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTag(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        primaryColor: _primaryColor,
        secondaryColor: _secondaryColor,
        child: Text('Obligatorio',
            style: GoogleFonts.redHatDisplay(
              color: _primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            )));
  }
}

class ReadyTag extends StatelessWidget {
  const ReadyTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CustomTag(
        padding: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 10,
        ),
        primaryColor: context.primaryColor,
        secondaryColor: const Color.fromRGBO(0, 172, 105, 0.1),
        child: Text('Listo',
            style: GoogleFonts.redHatDisplay(
              color: context.primaryColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            )));
  }
}
