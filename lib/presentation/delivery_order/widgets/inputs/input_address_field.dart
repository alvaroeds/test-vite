import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/resources/utils/fonts.dart';

class InputAddressField extends StatelessWidget {
  const InputAddressField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 56,
      child: TextField(
        key: key,
        maxLength: 150,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          filled: true,
          isDense: false,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 64, vertical: 20),
          border: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFE8E8EA)),
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color(0xFFE8E8EA)),
            borderRadius: BorderRadius.all(Radius.circular(18)),
          ),
          fillColor: const Color.fromRGBO(255, 255, 255, 1),
          counterText: '',
          hintStyle: context.currentStyle.bodyMedium?.copyWith(
            fontSize: 14,
          ),
          prefixIcon: const Icon(Icons.location_on_outlined),
          hintText: 'Ingrese su dirección acá',
        ),
        onSubmitted: (value) {
          context.read<AppCacheBloc>().add(AppCacheEvent.createAddress(value));
        },
      ),
    );
  }
}
