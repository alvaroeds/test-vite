import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';

import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/inputs/input_address_field.dart';

import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/mixin_style.dart';

class NewDirectionCard extends StatelessWidget with CardStyle {
  const NewDirectionCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AppCacheBloc, AppCacheState>(
      listenWhen: (previous, current) =>
          previous.user.addresses.length != current.user.addresses.length,
      listener: (context, state) {
        context.read<DeliveryOrderBloc>().add(
            DeliveryOrderEvent.updateAddress(state.user.addresses.firstOrNull));
      },
      child: Container(
          padding: cardPadding,
          decoration: cardStyle,
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Ingrese una dirección de envío'),
              InputAddressField(),
            ],
          )),
    );
  }
}
