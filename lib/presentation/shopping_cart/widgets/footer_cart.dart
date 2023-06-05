import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/shopping_cart/bloc/shopping_car_bloc.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class FooterCart extends StatelessWidget {
  const FooterCart({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<ShoppingCartBloc, ShoppingCartState, double>(
      selector: (state) {
        return state.shoppingCart.totalCost;
      },
      builder: (context, totalCost) {
        return Container(
          height: 84,
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          color: Colors.white,
          child: Row(
            children: [
              if (totalCost == 0)
                _ButtonMain(
                  'Volver',
                  () => Navigator.pop(context),
                )
              else ...[
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const _TextFooter(
                      'Sub-Total',
                      16,
                    ),
                    _TextFooter(
                      'S/.${totalCost.toStringAsFixed(2)}',
                      24,
                    ),
                  ],
                ),
                const Spacer(),
                _ButtonMain(
                  'Continuar',
                  () {
                    context.read<EstablishmentBloc>().state.whenOrNull(
                      hasData: (establishment) {
                        context.goNamed(RouterDeleveryOrder.name,
                            pathParameters: {
                              RouterEstablishment.firtsPath: establishment.idUrl
                            });
                      },
                    );
                  },
                )
              ],
            ],
          ),
        );
      },
    );
  }
}

class _TextFooter extends StatelessWidget {
  final String text;
  final double fontSize;
  const _TextFooter(this.text, this.fontSize);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints(minWidth: 120),
      child: Text(
        text,
        style: GoogleFonts.inter(
          textStyle: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}

class _ButtonMain extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  const _ButtonMain(this.text, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 6,
      child: SizedBox(
        height: 54,
        child: FloatingActionButton.extended(
          backgroundColor: context.primaryColor,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          onPressed: onPressed,
          label: Text(
            text,
            style: GoogleFonts.inter(
                textStyle: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            )),
          ),
        ),
      ),
    );
  }
}
