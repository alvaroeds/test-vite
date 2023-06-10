import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SliverFooter extends StatelessWidget {
  const SliverFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.only(bottom: 110),
          child: RichText(
            text: TextSpan(
              text: 'De ',
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500,
                  fontSize: 12,
                  color: const Color(0xffA5ABB4)),
              children: const <TextSpan>[
                TextSpan(
                  text: 'Pedido Listo ',
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xff40454D)),
                ),
                TextSpan(text: 'con 💚 para el Mundo.'),
              ],
            ),
          ),
          /*   Text(
            'De Pedido Listo con 💚 para el Mundo.',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 12, fontWeight: FontWeight.w500),
          ), */
        ),
      ),
    );
  }
}
