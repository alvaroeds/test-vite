part of 'shopping_car_bloc.dart';

@freezed
class ShoppingCartEvent with _$ShoppingCartEvent {
  const factory ShoppingCartEvent.started() = _Started;
  const factory ShoppingCartEvent.addAmount(String uuid) = _AddAmount;
  const factory ShoppingCartEvent.removeAmount(String uuid) = _RemoveAmount;
}
