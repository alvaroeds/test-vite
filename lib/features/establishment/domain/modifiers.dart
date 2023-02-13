import 'package:freezed_annotation/freezed_annotation.dart';

part 'modifiers.freezed.dart';
part 'modifiers.g.dart';

@freezed
class Modifiers with _$Modifiers {
  const factory Modifiers({
    @Default([]) List<ChooseForAmount> chooseForAmount,
    @Default([]) List<OneSelection> oneSelection,
    @Default([]) List<MultipleSelection> multipleSelection,
  }) = _Modifiers;

  factory Modifiers.fromJson(Map<String, dynamic> json) =>
      _$ModifiersFromJson(json);

  factory Modifiers.empty() => const Modifiers();
}

@freezed
class ChooseForAmount with _$ChooseForAmount {
  const factory ChooseForAmount({
    required int maximumQuantity,
    @Default(0) int minimumQuantity,
    @Default('') String uuid,
    @Default('Elige tu extra') String name,
    @Default([]) List<ExtraFood> extras,
  }) = _ChooseForAmount;

  const ChooseForAmount._();

  bool get isRequired => minimumQuantity > 0;

  CaseMinMax get caseMinMax => minimumQuantity == maximumQuantity
      ? const CaseMinMax.minEqualsToMax()
      : minimumQuantity == 0
          ? const CaseMinMax.zeroToMax()
          : const CaseMinMax.minDiferentToMax();

  factory ChooseForAmount.fromJson(Map<String, dynamic> json) =>
      _$ChooseForAmountFromJson(json);
}

@freezed
class ExtraFood with _$ExtraFood {
  const factory ExtraFood({
    required String name,
    required double price,
    required int limit,
    @Default('') String uuid,
  }) = _ExtraFood;

  factory ExtraFood.fromJson(Map<String, dynamic> json) =>
      _$ExtraFoodFromJson(json);
}

@freezed
class OneSelection with _$OneSelection {
  const factory OneSelection({
    required bool isRequired,
    required String name,
    @Default('') String uuid,
    @Default([]) List<OptionFood> options,
  }) = _OneSelection;

  const OneSelection._();

  CaseMinMax get caseMinMax => isRequired
      ? const CaseMinMax.minEqualsToMax()
      : const CaseMinMax.zeroToMax();

  factory OneSelection.fromJson(Map<String, dynamic> json) =>
      _$OneSelectionFromJson(json);
}

@freezed
class OptionFood with _$OptionFood {
  const factory OptionFood({
    required String name,
    required double price,
    @Default('') String uuid,
  }) = _OptionFood;

  factory OptionFood.fromJson(Map<String, dynamic> json) =>
      _$OptionFoodFromJson(json);
}

@freezed
class MultipleSelection with _$MultipleSelection {
  const factory MultipleSelection({
    required String name,
    required int maximumLimit,
    @Default(0) int minimumLimit,
    @Default('') String uuid,
    @Default([]) List<OptionFood> options,
  }) = _MultipleSelection;

  const MultipleSelection._();

  bool get isRequired => minimumLimit > 0;

  CaseMinMax get caseMinMax => minimumLimit == maximumLimit
      ? const CaseMinMax.minEqualsToMax()
      : minimumLimit == 0
          ? const CaseMinMax.zeroToMax()
          : const CaseMinMax.minDiferentToMax();

  factory MultipleSelection.fromJson(Map<String, dynamic> json) =>
      _$MultipleSelectionFromJson(json);
}

//enum CasesMinMax { minDiferentToMax, minEqualsToMax, zeroToMax }

@freezed
class CaseMinMax with _$CaseMinMax {
  const factory CaseMinMax.minDiferentToMax() = _MinDiferentToMax;
  const factory CaseMinMax.minEqualsToMax() = _MinEqualsToMax;
  const factory CaseMinMax.zeroToMax() = _ZeroToMax;
}
