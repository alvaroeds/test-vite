part of 'details_product_bloc.dart';

@freezed
class DetailsProductEvent with _$DetailsProductEvent {
  const factory DetailsProductEvent.increaseAmount(
      ExtraFood extra, int maximumQuantity) = _IncreaseAmount;
  const factory DetailsProductEvent.decreaseAmount(ExtraFood extra) =
      _DecreaseAmount;

  const factory DetailsProductEvent.selectOneOption({
    required String modifierUuid,
    required String optionUuid,
  }) = _SelectOneOption;

  const factory DetailsProductEvent.selectOption({
    required MultipleSelection modifier,
    required String optionUuid,
  }) = _SelectOption;

  const factory DetailsProductEvent.changeComment(String comment) =
      _ChangeComment;

  const factory DetailsProductEvent.increaseProductQuantity() =
      _IncreaseProductQuantity;
  const factory DetailsProductEvent.decreaseProductQuantity() =
      _DecreaseProductQuantity;
}
