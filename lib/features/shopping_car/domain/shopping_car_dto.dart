import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';

part 'shopping_car_dto.freezed.dart';
part 'shopping_car_dto.g.dart';

@freezed
class ShoppingCartDto with _$ShoppingCartDto {
  factory ShoppingCartDto({
    required String uuid,
    @Default([]) List<ItemCart> items,
  }) = _ShoppingCartDto;
  const ShoppingCartDto._();

  int get totalItem =>
      items.fold(0, (previousValue, element) => previousValue + element.amount);

  double get totalCost => items.fold(
      0, (previousValue, element) => previousValue + element.totalCost);

  factory ShoppingCartDto.fromJson(Map<String, dynamic> json) =>
      _$ShoppingCartDtoFromJson(json);
}

@freezed
class ItemCart with _$ItemCart {
  const factory ItemCart({
    required ProductDto product,
    required String uuid,
    required int amount,
    @Default('') String comment,
    @Default([]) List<AmountExtraFood> extrasFood,
    @Default([]) List<AmountOptionFood> optionsFoodOneSelection,
    @Default([]) List<AmountOptionFood> optionsFoodForMultiple,
  }) = _ItemCar;

  const ItemCart._();

  double get totalCost =>
      (product.priceWithDiscount +
          extrasFood.fold(0,
              (previousValue, element) => previousValue + element.totalCost) +
          optionsFoodOneSelection.fold(0,
              (previousValue, element) => previousValue + element.totalCost) +
          optionsFoodForMultiple.fold(0,
              (previousValue, element) => previousValue + element.totalCost)) *
      amount;
  factory ItemCart.fromJson(Map<String, dynamic> json) =>
      _$ItemCartFromJson(json);
}

@freezed
class AmountExtraFood with _$AmountExtraFood {
  const factory AmountExtraFood({
    required ExtraFood extraFood,
    required String uuidModifier,
    required int amount,
  }) = _AmountExtraFood;

  const AmountExtraFood._();

  double get totalCost => extraFood.price * amount;

  factory AmountExtraFood.fromJson(Map<String, dynamic> json) =>
      _$AmountExtraFoodFromJson(json);
}

@freezed
class AmountOptionFood with _$AmountOptionFood {
  const factory AmountOptionFood({
    required OptionFood optionFood,
    required String uuidModifier,
  }) = _AmountOptionFood;

  const AmountOptionFood._();

  double get totalCost => optionFood.price;

  factory AmountOptionFood.fromJson(Map<String, dynamic> json) =>
      _$AmountOptionFoodFromJson(json);
}
