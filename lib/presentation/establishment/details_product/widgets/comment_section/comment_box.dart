import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class CommentBox extends StatelessWidget {
  const CommentBox({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: TextField(
        minLines: 1,
        maxLines: 100,
        onChanged: (value) {
          context
              .read<DetailsProductBloc>()
              .add(DetailsProductEvent.changeComment(value));
        },
        decoration: InputDecoration(
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(18),
                borderSide: const BorderSide(
                  color: Color(0xff6B7380),
                )),
            hintText: 'Escribe las instruccions que necesites.',
            hintStyle: context.currentStyle.bodySmall?.getStyle(
              color: const Color(0xffA5A3A9),
              size: 14,
            )),
      ),
    );
  }
}
