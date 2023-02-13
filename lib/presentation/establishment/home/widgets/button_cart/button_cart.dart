import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ButtonCart extends StatelessWidget {
  const ButtonCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Material(
        shape: const StadiumBorder(),
        color: const Color(0xff00AC69),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 28,
            vertical: 14,
          ),
          child: Row(
            children: [
              const Icon(
                Icons.shopping_cart_outlined,
                color: Colors.white,
              ),
              const SizedBox(width: 15),
              Text('2 Productos',
                  style: GoogleFonts.manrope(
                    fontWeight: FontWeight.w700,
                    fontSize: 16,
                    color: Colors.white,
                  )),
              const Spacer(),
              Container(
                decoration: _decoration(),
                padding:
                    const EdgeInsets.symmetric(vertical: 3.5, horizontal: 6),
                child: Text('S/. 28.00',
                    style: GoogleFonts.manrope(
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                      color: Colors.white,
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  BoxDecoration _decoration() => BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 2.5,
        ),
        borderRadius: BorderRadius.circular(8),
      );
}
