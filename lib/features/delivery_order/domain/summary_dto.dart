import 'package:freezed_annotation/freezed_annotation.dart';

part 'summary_dto.freezed.dart';
part 'summary_dto.g.dart';

@freezed
class SummaryDto with _$SummaryDto {
  factory SummaryDto({
    required String nroOrder,
    required String establishmentId,
    required String establishmentAddress,
    required String establishmentHost,
    required String clientPhone,
    required String clientName,
    required String methodOfPayment,
    required int deliveryDateOnMilliseconds,
    required double deliveryCost,
    required double costOfProducts,
    required double cashOfClient,
    required List<SummaryProduct> summaryOfProducts,
    @Default('') String additionalAddressDetail,
    String? addressOfDelivery,
    @JsonKey(includeFromJson: false) DateTime? deliveryDate,
  }) = _SummaryDto;

  const SummaryDto._();

  factory SummaryDto.fromJson(Map<String, dynamic> json) =>
      _$SummaryDtoFromJson(json);

  double get totalCost => costOfProducts + deliveryCost;

  double get change => cashOfClient - totalCost;

  bool get isPayWithCash => cashOfClient > 0;

  Map<String, dynamic> convertToJson() => {
        ...toJson(),
        'summaryOfProducts':
            summaryOfProducts.map((e) => e.convertToJson()).toList(),
      };
}

@freezed
class SummaryProduct with _$SummaryProduct {
  const factory SummaryProduct({
    required String name,
    required int quantity,
    required double price,
    required String comment,
    required List<SummaryModifier> modifiers,
    String? image,
  }) = SsummaryProduct;

  const SummaryProduct._();

  double get priceWithModifiers =>
      price +
      modifiers.fold(
          0, (previousValue, element) => previousValue + element.price);

  factory SummaryProduct.fromJson(Map<String, dynamic> json) =>
      _$SummaryProductFromJson(json);

  Map<String, dynamic> convertToJson() => {
        ...toJson(),
        'modifiers': modifiers.map((e) => e.toJson()).toList(),
      };
}

@freezed
class SummaryModifier with _$SummaryModifier {
  const factory SummaryModifier({
    required String name,
    required int quantity,
    required double price,
  }) = _SummaryModifier;

  factory SummaryModifier.fromJson(Map<String, dynamic> json) =>
      _$SummaryModifierFromJson(json);
}
