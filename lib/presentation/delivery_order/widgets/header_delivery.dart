import 'package:flutter/material.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
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

class AppBarDelivery extends StatelessWidget implements PreferredSizeWidget {
  final VoidCallback? onPressed;
  const AppBarDelivery({super.key, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF6B7380).withOpacity(0.1),
            blurRadius: 24,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: IconButton(
                onPressed: onPressed,
                icon: Icon(
                  Icons.arrow_back_ios_new,
                  color: context.primaryColor,
                )),
          ),
          const TitteDelivery(),
          const SizedBox(width: 60)
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size(double.maxFinite, 80);
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
