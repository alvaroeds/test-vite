import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/user/domain/dto/address_dto.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/addresses_card.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/new_direction_card.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/inputs/input_address_field.dart';

class DeliverySection extends StatelessWidget {
  const DeliverySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocSelector<DeliveryOrderBloc, DeliveryOrderState,
        Option<AddressDto>>(
      selector: (state) {
        return state.address;
      },
      builder: (context, state) {
        return state.fold(
          NewDirectionCard.new,
          (addressSelected) => Column(
            children: [
              AddressCard(addressSelected: addressSelected),
              const SizedBox(height: 20),
              const Text('O Ingrese una nueva dirección'),
              InputAddressField(
                key: Key(addressSelected.uuid),
              ),
            ],
          ),
        );
      },
    );
  }
}
