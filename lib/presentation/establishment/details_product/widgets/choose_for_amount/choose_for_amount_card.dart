import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';
import 'package:pedido_listo_web/resources/theme/extensions/color_theme.dart';
import 'package:pedido_listo_web/resources/utils/extensions.dart';

class ChooseForAmountCard extends StatelessWidget {
  const ChooseForAmountCard({
    required this.extraFood,
    required this.currentAmount,
    required this.onTap,
    required this.maximumQuantity,
    this.isDisabled = false,
    super.key,
  });

  final ExtraFood extraFood;
  final bool isDisabled;
  final int maximumQuantity;
  final int currentAmount;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: const Color(0xff6B7380),
        ),
      ),
      child: Row(
        children: [
          CustomOptionInfo(
            name: '${extraFood.name} (máx: ${extraFood.limit})',
            price: extraFood.price,
            isDisabled: isDisabled,
          ),
          const Spacer(),
          _Buttons(
            extraFood,
            maximumQuantity: maximumQuantity,
            isNotMore: isDisabled,
          ),
        ],
      ),
    );
  }
}

class _Buttons extends StatelessWidget {
  const _Buttons(this.extraFood,
      {required this.maximumQuantity, required this.isNotMore});

  final ExtraFood extraFood;

  final int maximumQuantity;

  final bool isNotMore;

  @override
  Widget build(BuildContext context) {
    final bloc = context.read<DetailsProductBloc>();

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        BlocSelector<DetailsProductBloc, DetailsProductState, bool>(
          selector: (state) =>
              state.getAmountFromExtra(extraFood.uuid).getOrElse(() => 0) == 0,
          builder: (context, isDisabled) {
            return _Button(
              icon: Icons.remove,
              isDisabled: isDisabled,
              onTap: () =>
                  bloc.add(DetailsProductEvent.decreaseAmount(extraFood)),
            );
          },
        ),
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 7.5),
          padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 10),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            border: Border.all(
              color: const Color(0xffC3C7CD),
            ),
          ),
          child: BlocSelector<DetailsProductBloc, DetailsProductState, int>(
            selector: (state) {
              return state
                  .getAmountFromExtra(extraFood.uuid)
                  .getOrElse(() => 0);
            },
            builder: (context, value) {
              return Text(
                value.toString().padLeft(2, '0'),
                style: context.currentStyle.bodySmall?.getStyle(
                  color: const Color(0xff40454D),
                ),
              );
            },
          ),
        ),
        BlocSelector<DetailsProductBloc, DetailsProductState, bool>(
          selector: (state) {
            final amount =
                state.getAmountFromExtra(extraFood.uuid).getOrElse(() => 0);

            if (extraFood.limit == 0) {
              return false;
            }
            if (amount == extraFood.limit) {
              return true;
            }
            if (amount == maximumQuantity) {
              return true;
            }

            return false;
          },
          builder: (context, isDisabled) {
            return _Button(
              icon: Icons.add,
              isDisabled: isNotMore || isDisabled,
              onTap: isNotMore
                  ? null
                  : () => bloc.add(DetailsProductEvent.increaseAmount(
                      extraFood, maximumQuantity)),
            );
          },
        ),
      ],
    );
  }
}

class _Button extends StatelessWidget {
  const _Button(
      {required this.icon, required this.onTap, required this.isDisabled});

  final IconData icon;
  final VoidCallback? onTap;
  final bool isDisabled;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
      width: 25,
      child: ElevatedButton(
          onPressed: onTap,
          style: ElevatedButton.styleFrom(
            backgroundColor:
                isDisabled ? const Color(0xFFC3C7CD) : context.primaryColor,
            padding: EdgeInsets.zero,
            shape: const CircleBorder(),
          ),
          child: Icon(
            icon,
            color: Colors.white,
            size: 20,
          )),
    );
  }
}
