import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';

class InputAddressField extends StatelessWidget {
  const InputAddressField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      key: key,
      maxLength: 150,
      textCapitalization: TextCapitalization.sentences,
      decoration: const InputDecoration(
        counterText: '',
        hintText: 'Ingrese su dirección acá',
      ),
      onSubmitted: (value) {
        context.read<AppCacheBloc>().add(AppCacheEvent.createAddress(value));
      },
    );
  }
}
