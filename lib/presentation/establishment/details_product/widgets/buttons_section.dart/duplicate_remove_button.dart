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
      constraints: const BoxConstraints(minWidth: 108),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFFC3C7CD),
        ),
        color: Colors.transparent,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BlocBuilder<DetailsProductBloc, DetailsProductState>(
            buildWhen: (previous, current) =>
                current.productQuantity < 3 && previous.productQuantity < 3,
            builder: (context, state) {
              return IconButtonAmount(
                isDisabled: state.productQuantity == 1,
                onTap: () => context
                    .read<DetailsProductBloc>()
                    .add(const DetailsProductEvent.decreaseProductQuantity()),
                icon: Icons.remove,
              );
            },
          ),
          BlocSelector<DetailsProductBloc, DetailsProductState, int>(
            selector: (state) => state.productQuantity,
            builder: (context, value) {
              return Text(
                value.toString(), //.padLeft(2, '0'),
                style: context.currentStyle.displayMedium?.getStyle(
                  size: 14,
                  weight: FontWeight.w700,
                ),
              );
            },
          ),
          IconButtonAmount(
            onTap: () => context
                .read<DetailsProductBloc>()
                .add(const DetailsProductEvent.increaseProductQuantity()),
            icon: Icons.add,
          ),
        ],
      ),
    );
  }
}

class IconButtonAmount extends StatelessWidget {
  final IconData icon;
  final VoidCallback onTap;
  final bool isDisabled;
  const IconButtonAmount(
      {required this.icon,
      required this.onTap,
      super.key,
      this.isDisabled = false});

  @override
  Widget build(BuildContext context) {
    final color = isDisabled ? const Color(0xFFC3C7CD) : context.primaryColor;
    return InkWell(
      onTap: onTap,
      customBorder: const CircleBorder(),
      child: LayoutBuilder(builder: (context, constraints) {
        return Container(
          margin: const EdgeInsets.symmetric(horizontal: 8),
          height: 27,
          width: 27,
          decoration: BoxDecoration(
            border: Border.all(width: 2, color: color),
            shape: BoxShape.circle,
          ),
          child: Icon(
            icon,
            size: 16,
            color: color,
          ),
        );
      }),
    );
  }
}
