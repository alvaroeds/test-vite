import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';

import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/mixin_style.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class MethodPayCards extends StatelessWidget with CardStyle {
  const MethodPayCards({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeliveryOrderBloc>();
    return Container(
        padding: cardPadding,
        decoration: cardStyle,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Seleccione forma de pago',
                style: context.currentStyle.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(height: 18),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SelectableText(
                  'Opciones de Pago',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                SelectableOption(
                  text: 'Yape',
                  icon: const Icon(Icons.monetization_on),
                  onTap: () {
                    print('Seleccionaste Yape');
                  },
                ),
                const SizedBox(height: 10),
                SelectableOption(
                  text: 'Efectivo',
                  icon: const Icon(Icons.money),
                  onTap: () {
                    print('Seleccionaste Efectivo');
                  },
                ),
                const SizedBox(height: 20),
                const Icon(Icons.arrow_upward),
              ],
            ),
          ],
        ));
  }
}

class SelectableOption extends StatelessWidget {
  final String text;
  final Icon icon;
  final VoidCallback onTap;

  const SelectableOption({
    required this.text,
    required this.icon,
    required this.onTap,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          icon,
          const SizedBox(width: 10),
          SelectableText(
            text,
            style: const TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
  }
}
