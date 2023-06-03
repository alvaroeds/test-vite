import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class CommentSection extends StatelessWidget {
  const CommentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(30, 15, 30, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Notas para este producto',
            style: context.interBold2Title?.getStyle(size: 20),
          ),
          const SizedBox(height: 10),
          Text(
            'El Restaurante intentará seguirlas cuando lo prepare.',
            style: context.headline4?.getStyle(
              color: const Color(0xff878F9B),
              weight: FontWeight.w400,
              size: 14,
            ),
          ),
          const SizedBox(height: 10),
          const CommentBox(),
          const CommentLength(),
          const SizedBox(height: 10),
          /*  Text(
            '*En este campo no se aceptan modificaciones que generen valor adicional en la factura.',
            style: context.currentStyle.bodySmall?.getStyle(
              color: const Color(0xff878F9B),
              size: 14,
            ),
          ), */
          const SizedBox(height: 30),
        ],
      ),
    );
  }
}
