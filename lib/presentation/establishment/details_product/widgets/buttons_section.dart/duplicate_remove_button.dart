import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class DuplicateRemoveButton extends StatelessWidget {
  const DuplicateRemoveButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 61,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: context.primaryColor,
      ),
      child: Row(
        children: [
          IconButton(
              onPressed: () => context
                  .read<DetailsProductBloc>()
                  .add(const DetailsProductEvent.decreaseProductQuantity()),
              icon: const Icon(
                Icons.remove_circle,
                color: Colors.white,
              )),
          BlocSelector<DetailsProductBloc, DetailsProductState, int>(
            selector: (state) => state.productQuantity,
            builder: (context, value) {
              return Text(
                value.toString().padLeft(2, '0'),
                style: context.currentStyle.displayMedium?.getStyle(
                  color: Colors.white,
                  size: 14,
                  weight: FontWeight.w700,
                ),
              );
            },
          ),
          IconButton(
              onPressed: () => context
                  .read<DetailsProductBloc>()
                  .add(const DetailsProductEvent.increaseProductQuantity()),
              icon: const Icon(
                Icons.add_circle,
                color: Colors.white,
              )),
        ],
      ),
    );
  }
}
