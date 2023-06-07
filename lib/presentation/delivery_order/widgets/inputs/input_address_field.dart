import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/const/resource.dart';
import 'package:pedido_listo_web/presentation/app/bloc/app_cache_bloc.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class InputAddressField extends StatelessWidget {
  const InputAddressField({super.key});

  @override
  Widget build(BuildContext context) {
    const borderStyle = OutlineInputBorder(
      borderSide: BorderSide(color: Color(0xFFE8E8EA)),
      borderRadius: BorderRadius.all(Radius.circular(18)),
    );
    return SizedBox(
      height: 56,
      child: TextField(
        key: key,
        maxLength: 150,
        textCapitalization: TextCapitalization.sentences,
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          filled: true,
          isDense: false,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 64, vertical: 20),
          border: borderStyle,
          enabledBorder: borderStyle,
          fillColor: const Color.fromRGBO(255, 255, 255, 1),
          counterText: '',
          hintStyle: context.currentStyle.bodyMedium?.copyWith(
            fontSize: 14,
          ),
          prefixIcon: Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 0, 16),
              child: R.ASSETS_SVG_LOCATION_MARKER_SVG.toSvg()),
          hintText: 'Ingrese su dirección acá',
        ),
        onSubmitted: (value) {
          context.read<AppCacheBloc>().add(AppCacheEvent.createAddress(value));
        },
      ),
    );
  }
}
