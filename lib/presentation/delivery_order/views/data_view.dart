import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/method_pay_card.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/total_price_card.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/footer_delivery.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/forms/form_contact_user.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/forms/form_services_type.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/privacity_text.dart';

class DataView extends StatelessWidget {
  const DataView({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeliveryOrderBloc>();
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();

        bloc.add(const DeliveryOrderEvent.closeSelectable());
      },
      child: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          alignment: Alignment.center,
          child: Container(
            constraints: const BoxConstraints(
              maxWidth: 800,
            ),
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const SizedBox(height: 20),
                const TitleFormContact(),
                const FormContactUser(),
                const SizedBox(height: 10),
                const FormServicesType(),
                const TotalPriceCard(),
                if (bloc.state.establishmentDto.paymentMethods.isNotEmpty)
                  const MethodPayCards(),
                const SizedBox(height: 64),
                const PrivacityText(),
                const SizedBox(height: 20),
                const FooterDelivery()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
