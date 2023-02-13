import 'dart:math';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';

part 'details_product_event.dart';
part 'details_product_state.dart';
part 'details_product_bloc.freezed.dart';

class DetailsProductBloc
    extends Bloc<DetailsProductEvent, DetailsProductState> {
  final ProductDto product;
  DetailsProductBloc(this.product) : super(DetailsProductState.initial()) {
    on<_IncreaseAmount>((event, emit) {
      final amount =
          state.getAmountFromExtra(event.extra.uuid).getOrElse(() => 0);

      final hasLimit = event.extra.limit > 0;

      emit(state.copyWith(extrasAmountByModifier: {
        ...state.extrasAmountByModifier,
        event.extra.uuid: min(
            amount + 1,
            hasLimit
                ? min(event.extra.limit, event.maximumQuantity)
                : event.maximumQuantity),
      }));
    });
    on<_DecreaseAmount>((event, emit) {
      final amount =
          state.getAmountFromExtra(event.extra.uuid).getOrElse(() => 0);

      emit(state.copyWith(extrasAmountByModifier: {
        ...state.extrasAmountByModifier,
        event.extra.uuid: max(amount - 1, 0),
      }));
    });
    on<_SelectOneOption>((event, emit) {
      emit(state.copyWith(optionSelectedByModifier: {
        ...state.optionSelectedByModifier,
        event.modifierUuid: state
            .getOptionSelectedFromModifier(event.modifierUuid)
            .fold(
              () => some(event.optionUuid),
              (value) =>
                  value == event.optionUuid ? none() : some(event.optionUuid),
            ),
      }));
    });
    on<_SelectOption>((event, emit) {
      emit(state.copyWith(multipleSelected: {
        ...state.multipleSelected,
        event.modifier.uuid:
            optionOf(state.multipleSelected[event.modifier.uuid]).fold(
                () => [event.optionUuid],
                (value) => value.contains(event.optionUuid)
                    ? value
                        .where((element) => element != event.optionUuid)
                        .toList()
                    : event.modifier.maximumLimit <=
                            state.getCurrentAmountFromMultiple(event.modifier)
                        ? value
                        : [...value, event.optionUuid])
      }));
    });
    on<_ChangeComment>((event, emit) {
      emit(state.copyWith(comment: event.comment));
    });
    on<_IncreaseProductQuantity>((event, emit) {
      emit(state.copyWith(productQuantity: state.productQuantity + 1));
    });
    on<_DecreaseProductQuantity>((event, emit) {
      emit(state.copyWith(productQuantity: max(state.productQuantity - 1, 1)));
    });
  }
}
