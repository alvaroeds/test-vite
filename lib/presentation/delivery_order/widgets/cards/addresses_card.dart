import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/user/domain/dto/address_dto.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/mixin_style.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/inputs/input_additional_detail.dart';

class AddressCard extends StatelessWidget with CardStyle {
  final AddressDto addressSelected;
  const AddressCard({required this.addressSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCacheBloc, AppCacheState>(
      listenWhen: (previous, current) =>
          previous.user.addresses.length != current.user.addresses.length,
      listener: (context, state) {
        context.read<DeliveryOrderBloc>().add(
            DeliveryOrderEvent.updateAddress(state.user.addresses.lastOrNull));
      },
      buildWhen: (previous, current) =>
          previous.user.addresses.length != current.user.addresses.length,
      builder: (context, state) {
        final addresses = state.user.addresses;
        return Container(
          padding: cardPadding,
          decoration: cardStyle,
          child: Column(
            children: [
              const SizedBox(height: 12),
              const Text('Seleccione una dirección'),
              ...addresses.map((address) => AddressTile(
                    address: address,
                    isSelected: addressSelected.uuid == address.uuid,
                  ))
            ],
          ),
        );
      },
    );
  }
}

class AddressTile extends StatelessWidget {
  final AddressDto address;
  final bool isSelected;
  const AddressTile(
      {required this.address, required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text(address.reference),
          onTap: () {
            if (isSelected) return;
            context
                .read<DeliveryOrderBloc>()
                .add(DeliveryOrderEvent.updateAddress(address));
          },
          trailing: Icon(
            Icons.check_circle,
            color: isSelected ? Colors.green : Colors.transparent,
          ),
        ),
        if (isSelected) ...[
          const Text('Detalles Adicionales (Opcional):'),
          InputAdditionalDetail(
            initValue: context
                .read<DeliveryOrderBloc>()
                .state
                .additionalDetail[address.uuid],
          ),
        ],
      ],
    );
  }
}
