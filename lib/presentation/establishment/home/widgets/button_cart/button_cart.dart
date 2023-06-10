import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class ButtonCart extends StatelessWidget {
  final String idUrl;

  const ButtonCart({required this.idUrl, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: BlocBuilder<AppCacheBloc, AppCacheState>(
        builder: (context, state) {
          final cart = state.cartCache[idUrl];
          if (cart == null) {
            return const SizedBox.shrink();
          }
          if (cart.items.isEmpty) {
            return const SizedBox.shrink();
          }
          return Material(
            shape: const StadiumBorder(),
            color: context.primaryColor,
            child: InkWell(
              onTap: () {
                final bloc = context.read<EstablishmentBloc>();
                bloc.state.whenOrNull(
                  hasData: (establishment) {
                    context.goNamed(RouterCart.name, pathParameters: {
                      RouterEstablishment.firtsPath: establishment.idUrl
                    });
                  },
                );
              },
              child: Container(
                height: 54,
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                ),
                child: Row(
                  children: [
                    R.ASSETS_SVG_CART_SVG.toSvg(),
                    const SizedBox(width: 15),
                    Text(
                        '${cart.totalItem} Producto${cart.items.length == 1 ? '' : 's'}',
                        style: GoogleFonts.manrope(
                          fontWeight: FontWeight.w700,
                          fontSize: 16,
                          color: Colors.white,
                        )),
                    const Spacer(),
                    Container(
                      height: 32,
                      decoration: _decoration(),
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(horizontal: 6),
                      child: Text(cart.totalCost.formattedPrice,
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
        },
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
