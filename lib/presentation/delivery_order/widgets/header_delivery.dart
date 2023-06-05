import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/utils/fonts.dart';

class TitteDelivery extends StatelessWidget {
  const TitteDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Datos de entrega',
          style: context.interBold1Title?.copyWith(
            fontSize: 18,
          ),
        ),
      ],
    );
  }
}

/* class ButtonClear extends StatelessWidget {
  const ButtonClear({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: const [
            BoxShadow(
                color: Color.fromARGB(20, 0, 0, 0),
                offset: Offset(2, 2),
                spreadRadius: 2,
                blurRadius: 6)
          ],
          borderRadius: BorderRadius.circular(10)),
      child: BlocSelector<ShoppingCartBloc, ShoppingCartState, bool>(
        selector: (state) => state.shoppingCart.items.isEmpty,
        builder: (context, isEmpty) {
          const color = Color(0xFFC3C7CD);
          return IconButton(
            padding: EdgeInsets.zero,
            onPressed:
                isEmpty ? null : () => AlertDialogClearCart.show(context),
            icon: Icon(
              Icons.delete,
              size: 26,
              color: isEmpty ? color : context.primaryColor,
            ),
          );
        },
      ),
    );
  }
} */
