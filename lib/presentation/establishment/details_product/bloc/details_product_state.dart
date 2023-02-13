part of 'details_product_bloc.dart';

@freezed
class DetailsProductState with _$DetailsProductState {
  const factory DetailsProductState({
    required String comment,
    required int productQuantity,
    //required ProductDto product,
    required Map<String, int> extrasAmountByModifier,
    required Map<String, Option<String>> optionSelectedByModifier,
    required Map<String, List<String>> multipleSelected,
  }) = _DetailsProductState;

  const DetailsProductState._();

  Option<int> getAmountFromExtra(String uuid) =>
      optionOf(extrasAmountByModifier[uuid]);

  int getCurrentAmountFromModifier(ChooseForAmount chooseForAmount) =>
      chooseForAmount.extras.fold(
          0,
          (value, element) =>
              value + getAmountFromExtra(element.uuid).getOrElse(() => 0));

  Option<String> getOptionSelectedFromModifier(String uuid) =>
      optionSelectedByModifier[uuid] ?? none();

  int getCurrentAmountFromMultiple(MultipleSelection chooseForMultiple) =>
      optionOf(multipleSelected[chooseForMultiple.uuid])
          .map((a) => a.length)
          .getOrElse(() => 0);

  bool isSelectedOption(String modifierUuid, String optionUuid) =>
      multipleSelected[modifierUuid]?.contains(optionUuid) ?? false;

  double getExtrasTotalPrice(
    List<ChooseForAmount> choosesForAmount,
    List<OneSelection> oneSelections,
    List<MultipleSelection> multipleSelections,
  ) {
    final extrasTotalPrice = choosesForAmount.fold<double>(
      0,
      (value, element) =>
          value +
          element.extras.fold(
            0.0,
            (value, element) =>
                value +
                element.price *
                    getAmountFromExtra(element.uuid).fold(
                      () => 0,
                      (a) => a,
                    ),
          ),
    );

    final oneSelectionsTotalPrice = oneSelections.fold<double>(
      0,
      (value, modifier) =>
          value +
          modifier.options.fold(
            0.0,
            (value, element) =>
                value +
                element.price *
                    (getOptionSelectedFromModifier(modifier.uuid).fold(
                      () => 0,
                      (a) => a == element.uuid ? 1 : 0,
                    )),
          ),
    );

    final multipleSelectionsTotalPrice = multipleSelections.fold<double>(
      0,
      (value, chooseForMultiple) =>
          value +
          chooseForMultiple.options.fold(
              0.0,
              (value, element) =>
                  value +
                  element.price *
                      optionOf(multipleSelected[chooseForMultiple.uuid]).fold(
                          () => 0, (a) => a.contains(element.uuid) ? 1 : 0)),
    );

    return extrasTotalPrice +
        oneSelectionsTotalPrice +
        multipleSelectionsTotalPrice;
  }

  factory DetailsProductState.initial() => const DetailsProductState(
        comment: '',
        extrasAmountByModifier: {},
        productQuantity: 1,
        optionSelectedByModifier: {},
        multipleSelected: {},
      );
}
