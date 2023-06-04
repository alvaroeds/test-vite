part of 'shopping_car_bloc.dart';

@freezed
class ShoppingCartState with _$ShoppingCartState {
  const factory ShoppingCartState({required ShoppingCartDto shoppingCart}) =
      _ShoppingCartState;
}
