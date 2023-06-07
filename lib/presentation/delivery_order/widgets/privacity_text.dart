import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/fonts.dart';

class PrivacityText extends StatelessWidget {
  const PrivacityText({super.key});

  Future<void> launchURL(String url) async {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: RichText(
          text: TextSpan(
        text: 'Al hacer clic en "Hacer pedido" acepta los ',
        style: context.interBold1Title?.copyWith(
            color: const Color(0xff565C66),
            fontSize: 10,
            fontWeight: FontWeight.w500),
        children: [
          TextSpan(
            text: 'Términos de uso',
            style: TextStyle(
              color: context.primaryColor,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(
            text: ' y ',
          ),
          TextSpan(
            text: 'Política de privacidad',
            style: TextStyle(
              color: context.primaryColor,
              fontWeight: FontWeight.bold,
            ),
            recognizer: TapGestureRecognizer()..onTap = () {},
          ),
          const TextSpan(
            text: '.',
          ),
        ],
      )),
    );
  }
}
