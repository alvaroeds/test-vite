import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/bloc/shopping_car_bloc.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/widgets/alert_dialog_clear.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class TitteCart extends StatelessWidget {
  const TitteCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Canasta',
          style: context.interBold1Title?.copyWith(
            fontSize: 18,
          ),
        ),
        BlocSelector<ShoppingCartBloc, ShoppingCartState, String>(
          selector: (state) {
            return state.shoppingCart.totalItem.toString();
          },
          builder: (context, amount) {
            if (amount == '0') return const SizedBox.shrink();

            return Container(
              constraints: const BoxConstraints(minWidth: 31),
              height: 31,
              margin: const EdgeInsets.only(left: 14),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                  color: context.primaryColor,
                  borderRadius: BorderRadius.circular(10)),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              child: Text(amount,
                  style: GoogleFonts.manrope(
                      textStyle: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ))),
            );
          },
        )
      ],
    );
  }
}

class ButtonClear extends StatelessWidget {
  const ButtonClear({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ShoppingCartBloc, ShoppingCartState, bool>(
      selector: (state) => state.shoppingCart.items.isEmpty,
      builder: (context, isEmpty) {
        const color = Color(0xFFC3C7CD);
        return InkWell(
          onTap: isEmpty ? null : () => AlertDialogClearCart.show(context),
          child: Container(
            margin: const EdgeInsets.only(right: 20),
            padding: const EdgeInsets.all(10),
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
            child: R.ASSETS_SVG_DELETE_GREEN_SVG
                .toSvg(color: isEmpty ? color : context.primaryColor),
          ),
        );
      },
    );
  }
}
