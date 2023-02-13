import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/one_selection/one_selection_card.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/widgets/widgets.dart';

class OneSelectionSection extends StatelessWidget {
  const OneSelectionSection({
    required this.oneSelection,
    super.key,
  });

  final OneSelection oneSelection;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      child: BlocBuilder<DetailsProductBloc, DetailsProductState>(
        buildWhen: (previous, current) =>
            current.getOptionSelectedFromModifier(oneSelection.uuid) !=
            previous.getOptionSelectedFromModifier(oneSelection.uuid),
        builder: (context, state) {
          final selected =
              state.getOptionSelectedFromModifier(oneSelection.uuid);
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              CustomSelectionHeader(
                name: oneSelection.name,
                description: oneSelection.caseMinMax.maybeWhen(
                  orElse: () => 'Seleccione 1 opción',
                  zeroToMax: () => 'Seleccione hasta 1 opción',
                ),
                isRequired: oneSelection.isRequired,
                isReady: selected.isSome(),
              ),
              const SizedBox(height: 30),
              Wrap(
                children: oneSelection.options
                    .map((option) => OneSelectionCard(
                          optionFood: option,
                          isSelected: selected.fold(
                              () => false, (uuid) => option.uuid == uuid),
                          onTap: () {
                            context.read<DetailsProductBloc>().add(
                                DetailsProductEvent.selectOneOption(
                                    modifierUuid: oneSelection.uuid,
                                    optionUuid: option.uuid));
                          },
                        ))
                    .toList(),
              ),
            ],
          );
        },
      ),
    );
  }
}
