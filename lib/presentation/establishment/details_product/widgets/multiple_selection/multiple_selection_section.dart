import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/multiple_selection/multiple_selection_card.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';

import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';

class MultipleSelectionSection extends StatelessWidget {
  const MultipleSelectionSection({
    required this.multipleSelection,
    super.key,
  });

  final MultipleSelection multipleSelection;

  int get _minimumLimit => multipleSelection.minimumLimit;

  int get _maximumLimit => multipleSelection.maximumLimit;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: BlocBuilder<DetailsProductBloc, DetailsProductState>(
        buildWhen: (previous, current) =>
            current.getCurrentAmountFromMultiple(multipleSelection) !=
            previous.getCurrentAmountFromMultiple(multipleSelection),
        builder: (context, state) {
          final currentAmount =
              state.getCurrentAmountFromMultiple(multipleSelection);

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomSelectionHeader(
                name: multipleSelection.name,
                description: multipleSelection.caseMinMax.when(
                    minDiferentToMax: () =>
                        'Selecciona entre $_minimumLimit-$_maximumLimit opciones',
                    minEqualsToMax: () => 'Seleccione $_maximumLimit opciones',
                    zeroToMax: () =>
                        'Selecciona hasta $_maximumLimit opciones'),
                isRequired: multipleSelection.isRequired,
                isReady: currentAmount >= max(_minimumLimit, 1) &&
                    currentAmount <= _maximumLimit,
              ),
              const SizedBox(height: 30),
              Wrap(
                  children: multipleSelection.options
                      .map((option) => MultipleSelectionCard(
                            optionFood: option,
                            isSelected: state.isSelectedOption(
                                multipleSelection.uuid, option.uuid),
                            isDisabled:
                                multipleSelection.maximumLimit <= currentAmount,
                            onTap: () {
                              context.read<DetailsProductBloc>().add(
                                  DetailsProductEvent.selectOption(
                                      modifier: multipleSelection,
                                      optionUuid: option.uuid));
                            },
                          ))
                      .toList()),
            ],
          );
        },
      ),
    );
  }
}
