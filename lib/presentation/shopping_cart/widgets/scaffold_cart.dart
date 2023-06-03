import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/bloc/shopping_car_bloc.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/widgets/alert_dialog_clear.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/widgets/footer_cart.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class ScaffoldCart extends StatelessWidget {
  final Widget child;
  const ScaffoldCart({required this.child, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      appBar: AppBar(
        toolbarHeight: 80,
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        actions: const [ButtonClear()],
        title: const TitteCart(),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(
              Icons.arrow_back_ios_new,
              color: context.primaryColor,
            )),
      ),
      bottomNavigationBar: const FooterCart(),
    );
  }
}

class TitteCart extends StatelessWidget {
  const TitteCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Canasta',
          style: GoogleFonts.inter(
              textStyle: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color(0xff1D252C),
          )),
        ),
        BlocSelector<ShoppingCartBloc, ShoppingCartState, String>(
          selector: (state) {
            return state.shoppingCart.totalItem.toString();
          },
          builder: (context, amount) {
            if (amount == '0') return const SizedBox.shrink();

            return Container(
              constraints: const BoxConstraints(minWidth: 31),
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
}
