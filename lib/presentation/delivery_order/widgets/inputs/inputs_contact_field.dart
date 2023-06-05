import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/delivery_order/bloc/delivery_order_bloc.dart';
import 'package:pedido_listo_web/resources/utils/fonts.dart';

class InputPhoneField extends StatelessWidget {
  const InputPhoneField({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeliveryOrderBloc>();
    return _BaseInputField(
      initValue: bloc.state.contactName,
      keyboardType: TextInputType.phone,
      hintText: '+59-9-256-5333',
      onChanged: (value) => bloc.add(DeliveryOrderEvent.updatePhone(value)),
      title: 'Número Telefónico',
    );
  }
}

class InputNameField extends StatelessWidget {
  const InputNameField({super.key});

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DeliveryOrderBloc>();
    return _BaseInputField(
      initValue: bloc.state.contactPhone,
      hintText: 'Ingrese su nombre acá',
      onChanged: (value) => bloc.add(DeliveryOrderEvent.updateName(value)),
      title: 'Nombre',
    );
  }
}

class _BaseInputField extends StatelessWidget {
  final String initValue;
  final String hintText;
  final String title;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;

  const _BaseInputField({
    required this.initValue,
    required this.hintText,
    required this.title,
    required this.onChanged,
    this.keyboardType,
  });

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFE8E8EA)),
      borderRadius: BorderRadius.all(Radius.circular(10)),
    );
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 18, bottom: 10),
          child: Text(title,
              style: context.currentStyle.bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold)),
        ),
        TextFormField(
          maxLength: 14,
          keyboardType: keyboardType,
          decoration: InputDecoration(
              filled: true,
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              border: borderStyle,
              enabledBorder: borderStyle,
              fillColor: Colors.white,
              hintStyle: const TextStyle(
                color: Color.fromRGBO(225, 227, 230, 0.953),
                fontSize: 14,
              ),
              hintText: hintText,
              counterText: ''),
          initialValue: initValue,
          onChanged: onChanged,
        ),
      ],
    );
  }
}
