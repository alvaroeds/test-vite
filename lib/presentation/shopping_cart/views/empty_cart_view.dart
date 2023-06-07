import 'package:flutter/material.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class EmptyCartView extends StatelessWidget {
  const EmptyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    const color = Color(0xFFC3C7CD);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: R.ASSETS_PNG_BAG_PNG.toPng(),
          ),
          const SizedBox(height: 30),
          const Text(
            'Aún no tienes productos\nen tu canasta',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: 24, fontWeight: FontWeight.bold, color: color),
          ),
        ],
      ),
    );
  }
}
