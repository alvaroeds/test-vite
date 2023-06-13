import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/show_snack_bar.dart';
import 'package:pedido_listo_web/resources/router/pedido_listo_routes.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class FooterDelivery extends StatelessWidget {
  const FooterDelivery({super.key});

  void _confirmOrder(BuildContext context) {
    final state = context.read<DeliveryOrderBloc>().state;
    void showError(String message) {
      showSnackBar(message, context, icon: Icons.error_outline);
    }

    if (state.contactName.isEmpty) {
      return showError('Ingrese su nombre');
    }
    if (state.contactPhone.isEmpty) {
      return showError('Ingrese su número de telefono');
    }
    if (state.service.isDelivery && state.address.isNone()) {
      return showError('Seleccione o ingrese una dirección');
    }
    if (state.paymentMethod.method.isNone() &&
        state.establishmentDto.paymentMethods.isNotEmpty) {
      return showError('Seleccione un método de pago');
    }
    if (state.paymentMethod.isCash) {
      if (state.paymentMethod.isInit) {
        return showError('Ingrese el monto a pagar');
      }

      final total = state.shoppingCartDto.totalCost +
          (state.address.isNone() ? 0.0 : state.establishmentDto.deliveryCost);

      if (state.paymentMethod.cash < total) {
        return showError('Monto inválido');
      }
    }

    context
        .read<DeliveryOrderBloc>()
        .add(const DeliveryOrderEvent.createOrder());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return BlocConsumer<DeliveryOrderBloc, DeliveryOrderState>(
      listenWhen: (previous, current) =>
          previous.deliveryOrderFailureOrSuccessOption !=
          current.deliveryOrderFailureOrSuccessOption,
      listener: (context, state) {
        state.deliveryOrderFailureOrSuccessOption.forEach((a) {
          a.fold(
            (l) =>
                showSnackBar(l.toString(), context, icon: Icons.error_outline),
            (summary) {
              final urlId = state.establishmentDto.idUrl;

              context.read<AppCacheBloc>()
                ..add(AppCacheEvent.updateCurrentSummary(summary: summary))
                ..add(AppCacheEvent.addOrder(summary.nroOrder))
                ..add(AppCacheEvent.clearCart(urlId));

              GoRouter.of(context).pushReplacementNamed(
                RouterSummaryOrder.name,
                pathParameters: {
                  RouterEstablishment.firtsPath: urlId,
                  RouterSummaryOrder.nroOrder: summary.nroOrder,
                },
              );
            },
          );
        });
      },
      buildWhen: (previous, current) =>
          previous.isSubmitting != current.isSubmitting,
      builder: (context, state) {
        return SizedBox(
          height: 64,
          width: width * 410 / 428,
          child: FloatingActionButton.extended(
            icon: state.isSubmitting
                ? const CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                  )
                : null, // R.ASSETS_SVG_WHATSAPP_SVG.toSvg(),
            backgroundColor: context.primaryColor,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () => _confirmOrder(context),
            label: state.isSubmitting
                ? const SizedBox.shrink()
                : Text(
                    ' Hacer pedido',
                    style: GoogleFonts.inter(
                        textStyle: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    )),
                  ),
          ),
        );
      },
    );
  }
}
