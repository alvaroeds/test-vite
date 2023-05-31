import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/choose_for_amount/choose_for_amount_card.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';

import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';

class ChooseForAmountSection extends StatelessWidget {
  const ChooseForAmountSection({
    required this.chooseForAmount,
    super.key,
  });

  final ChooseForAmount chooseForAmount;

  int get _maximumQuantity => chooseForAmount.maximumQuantity;
  int get _minimumQuantity => chooseForAmount.minimumQuantity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 20),
      child: BlocBuilder<DetailsProductBloc, DetailsProductState>(
        buildWhen: (previous, current) =>
            current.getCurrentAmountFromModifier(chooseForAmount) !=
            previous.getCurrentAmountFromModifier(chooseForAmount),
        builder: (context, state) {
          final currentAmount =
              state.getCurrentAmountFromModifier(chooseForAmount);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomSelectionHeader(
                name: chooseForAmount.name,
                description: chooseForAmount.caseMinMax.when(
                    minDiferentToMax: () =>
                        'Selecciona entre $_minimumQuantity-$_maximumQuantity opciones',
                    minEqualsToMax: () =>
                        'Seleccione $_maximumQuantity opciones',
                    zeroToMax: () =>
                        'Selecciona hasta $_maximumQuantity opciones'),
                isRequired: chooseForAmount.isRequired,
                isReady: currentAmount >= max(_minimumQuantity, 1) &&
                    currentAmount <= _maximumQuantity &&
                    _minimumQuantity != 0,
              ),
              const SizedBox(height: 30),
              Wrap(
                  children: chooseForAmount.extras
                      .map((extra) => ChooseForAmountCard(
                            isDisabled: chooseForAmount.maximumQuantity <=
                                currentAmount,
                            extraFood: extra,
                            currentAmount: currentAmount,
                            maximumQuantity: chooseForAmount.maximumQuantity,
                            onTap: () {},
                          ))
                      .toList()),
            ],
          );
        },
      ),
    );
  }
}
