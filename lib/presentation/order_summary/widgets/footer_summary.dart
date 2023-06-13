import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/establishment/bloc/establishment_bloc.dart';
import 'package:pedido_listo_web/presentation/order_summary/bloc/order_summary_bloc.dart';
import 'package:pedido_listo_web/presentation/widgets/buttons/elevated_button_app.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class FooterSummary extends StatelessWidget {
  const FooterSummary({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 800,
      child: Row(
        children: [
          const Spacer(flex: 21),
          Expanded(
            flex: 386,
            child: ElevatedButtonApp(
              height: 50,
              icon: R.ASSETS_SVG_WHATSAPP_SVG.toSvg(),
              title: 'Consultar sobre mi pedido',
              onPressed: () {
                context.read<EstablishmentBloc>().state.whenOrNull(
                    hasData: (establishment) => context
                        .read<OrderSummaryBloc>()
                        .add(OrderSummaryEvent.askAboutOrder(
                            establishment.whatsappNumber)));
              },
            ),
          ),
          const Spacer(flex: 21),
        ],
      ),
    );
  }
}
