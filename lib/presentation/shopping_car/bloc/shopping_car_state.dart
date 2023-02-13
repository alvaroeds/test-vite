part of 'shopping_car_bloc.dart';

@freezed
class ShoppingCarState with _$ShoppingCarState {
  const factory ShoppingCarState.initial() = _Initial;
  const factory ShoppingCarState.some(ShopppingCarDto shoppingCar) = _Some;
}
