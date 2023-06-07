import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';

import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/inputs/input_address_field.dart';

import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/mixin_style.dart';
import 'package:pedido_listo_web/resources/utils/fonts.dart';

class CreateAddressCard extends StatelessWidget with CardStyle {
  const CreateAddressCard({super.key});

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
          margin: cardMargin,
          decoration: cardStyle,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ingrese una dirección de envío',
                style: context.currentStyle.bodyMedium
                    ?.copyWith(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 18),
              const InputAddressField(),
            ],
          )),
    );
  }
}
