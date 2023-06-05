import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pedido_listo_web/features/user/domain/dto/address_dto.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/cards/mixin_style.dart';
import 'package:pedido_listo_web/presentation/delivery_order/widgets/inputs/input_additional_detail.dart';
import 'package:pedido_listo_web/resources/theme/colors_app.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 12),
              Text(
                'Seleccione una dirección',
                style: context.currentStyle.bodyMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
              ),
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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 20),
        ListTile(
          contentPadding: EdgeInsets.zero,
          minLeadingWidth: 0,
          onLongPress: () {},
          leading: const Icon(
            Icons.location_on_outlined,
            size: 26,
            color: ColorsApp.textColor,
          ),
          titleTextStyle: context.currentStyle.bodyMedium?.copyWith(
            fontWeight: FontWeight.bold,
          ),
          title: Text(address.reference),
          onTap: () {
            if (isSelected) return;
            context
                .read<DeliveryOrderBloc>()
                .add(DeliveryOrderEvent.updateAddress(address));
          },
          trailing: CircleChecked(
            isSelected: isSelected,
          ),
        ),
        if (isSelected) ...[
          const SizedBox(height: 10),
          RichText(
            text: TextSpan(
              text: 'Detalles Adicionales ',
              style: context.currentStyle.bodyMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
              children: <TextSpan>[
                TextSpan(
                  text: '(Opcional)',
                  style: GoogleFonts.nunitoSans(
                      color: context.primaryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 14),
                ),
                const TextSpan(text: ':'),
              ],
            ),
          ),
          const SizedBox(height: 9),
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

class CircleChecked extends StatelessWidget {
  final bool isSelected;
  const CircleChecked({required this.isSelected, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 20,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: context.primaryColor,
            width: 3,
          )),
      alignment: Alignment.center,
      child: isSelected
          ? Container(
              width: 10,
              height: 10,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: context.primaryColor,
              ),
            )
          : null,
    );
  }
}
