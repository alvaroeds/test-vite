import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/features/shared/core/uuid.dart';

part 'product_dto.freezed.dart';
part 'product_dto.g.dart';

@freezed
class ProductDto with _$ProductDto {
  factory ProductDto({
    required String description,
    required String name,
    required String state,
    required double discount,
    required double price,
    @Default('') String uuid,
    @Default([]) List<String> images,
    @Default([]) List<String> chooseForAmountUuids,
    @Default([]) List<String> oneSelectionUuids,
    @Default([]) List<String> multipleSelectionUuids,
  }) = _ProductDto;
  const ProductDto._();

  String get discountText => (discount * 100).toString();
  double get priceWithDiscount => price - price * discount;

  factory ProductDto.fromJson(Map<String, dynamic> json) =>
      _$ProductDtoFromJson(json);

  List<ChooseForAmount> getChooseForAmountList(
      List<ChooseForAmount> chooseForAmount) {
    return chooseForAmount
        .where((element) => chooseForAmountUuids.contains(element.uuid))
        .toList();
  }

  List<OneSelection> getOneSelectionList(List<OneSelection> oneSelections) {
    return oneSelections
        .where((element) => oneSelectionUuids.contains(element.uuid))
        .toList();
  }

  List<MultipleSelection> getMultipleSelectionList(
      List<MultipleSelection> multipleSelection) {
    return multipleSelection
        .where((element) => multipleSelectionUuids.contains(element.uuid))
        .toList();
  }
}

@freezed
class CategoriesDto with _$CategoriesDto {
  static const ProductField = 'products';

  const factory CategoriesDto({
    required String name,
    required String state,
    @Default('') String uuid,
    @JsonKey(name: CategoriesDto.ProductField)
    @Default([])
        List<ProductDto> products,
  }) = _CategoriesDto;

  const CategoriesDto._();

  bool get hasProducts => products.isNotEmpty;

  factory CategoriesDto.fromJson(Map<String, dynamic> json) =>
      _$CategoriesDtoFromJson(json);

  factory CategoriesDto.newfromName(String name) => CategoriesDto(
        name: name,
        state: 'active',
        uuid: Uuid().generateV4(),
      );

  static List<Map<String, dynamic>> convertListToJson(
          List<CategoriesDto> list) =>
      list
          .map((dto) => {
                ...dto.toJson(),
                CategoriesDto.ProductField:
                    dto.products.map((product) => product.toJson()).toList()
              })
          .toList();
}
