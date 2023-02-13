import 'package:freezed_annotation/freezed_annotation.dart';

part 'shopping_car_dto.freezed.dart';
part 'shopping_car_dto.g.dart';

@freezed
class ShopppingCarDto with _$ShopppingCarDto {
  factory ShopppingCarDto({
    required String uuid,
    @Default([]) List<ItemCar> items,
  }) = _ShopppingCarDto;

  factory ShopppingCarDto.fromJson(Map<String, dynamic> json) =>
      _$ShopppingCarDtoFromJson(json);
}

@freezed
class ItemCar with _$ItemCar {
  const factory ItemCar({
    required String uuidProduct,
    required int amount,
    @Default([]) List<String> uuidsExtras,
    @Default([]) List<String> uuidsOptionsFood,
  }) = _ItemCar;

  factory ItemCar.fromJson(Map<String, dynamic> json) =>
      _$ItemCarFromJson(json);
}
