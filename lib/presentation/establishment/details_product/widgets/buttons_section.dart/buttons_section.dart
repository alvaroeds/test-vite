import 'package:flutter/material.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';

class ButtonsSection extends StatelessWidget {
  final void Function(BuildContext context) onPressed;
  final double totalPrice;
  const ButtonsSection({
    required this.onPressed,
    required this.totalPrice,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
      child: Row(
        children: [
          const DuplicateRemoveButton(),
          const SizedBox(width: 10),
          Expanded(
              child: AddCartButton(
            totalPrice: totalPrice,
            onPressed: () => onPressed(context),
          )),
        ],
      ),
    );
  }
}
