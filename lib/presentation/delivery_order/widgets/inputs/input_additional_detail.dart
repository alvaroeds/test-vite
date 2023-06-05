import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';

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
      decoration: const InputDecoration(
        counterText: '',
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
