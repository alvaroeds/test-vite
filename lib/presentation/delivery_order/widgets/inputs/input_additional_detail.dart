import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class InputAdditionalDetail extends StatelessWidget {
  final String? initValue;
  const InputAdditionalDetail({this.initValue, super.key});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      key: key,
      initialValue: initValue,
      maxLength: 100,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        filled: true,
        contentPadding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
        border: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD1D5DB)),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(color: Color(0xFFD1D5DB)),
          borderRadius: BorderRadius.all(Radius.circular(8)),
        ),
        fillColor: const Color(0xFFF9FAFB),
        counterText: '',
        hintStyle: context.interBold1Title?.copyWith(
          color: const Color(0xFf6B7280), //6B7280
          fontWeight: FontWeight.normal,
          fontSize: 14,
        ),
        hintText: 'N° depto, casa, referencia',
      ),
      onChanged: (value) {
        context
            .read<DeliveryOrderBloc>()
            .add(DeliveryOrderEvent.updateAdditionalDetail(value));
      },
    );
  }
}
