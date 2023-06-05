import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/presentation/landing/widgets/show_snack_bar.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';

class FooterDelivery extends StatelessWidget {
  const FooterDelivery({super.key});

  void _confirmOrder(BuildContext context) {
    final bloc = context.read<DeliveryOrderBloc>();
    void showError(String message) {
      showSnackBar(message, context, icon: Icons.error_outline);
    }

    if (bloc.state.contactName.isEmpty) {
      return showError('Ingrese su nombre');
    }
    if (bloc.state.contactPhone.isEmpty) {
      return showError('Ingrese su número de telefono');
    }
    if (bloc.state.service.isDelivery && bloc.state.address.isNone()) {
      return showError('Seleccione o ingrese una dirección');
    }

    context
        .read<DeliveryOrderBloc>()
        .add(const DeliveryOrderEvent.createOrder());
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return SizedBox(
      height: 64,
      width: width * 410 / 428,
      child: FloatingActionButton.extended(
        backgroundColor: context.primaryColor,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        onPressed: () => _confirmOrder(context),
        label: Text(
          'HACER PEDIDO',
          style: GoogleFonts.inter(
              textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          )),
        ),
      ),
    );
  }
}