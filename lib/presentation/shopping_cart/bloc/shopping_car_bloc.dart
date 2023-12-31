import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';
part 'shopping_car_event.dart';
part 'shopping_car_state.dart';
part 'shopping_car_bloc.freezed.dart';

class ShoppingCartBloc extends Bloc<ShoppingCartEvent, ShoppingCartState> {
  ShoppingCartBloc(ShoppingCartDto cache)
      : super(ShoppingCartState(shoppingCart: cache)) {
    on<_AddAmount>(_onAddAmount);
    on<_RemoveAmount>(_onRemoveAmount);
    on<_ClearCart>(_onClearCart);
  }

  FutureOr<void> _onClearCart(
    _ClearCart event,
    Emitter<ShoppingCartState> emit,
  ) {
    emit(state.copyWith(
        shoppingCart: state.shoppingCart.copyWith(
      items: [],
    )));
  }

  FutureOr<void> _onAddAmount(
    _AddAmount event,
    Emitter<ShoppingCartState> emit,
  ) {
    emit(state.copyWith(
        shoppingCart: state.shoppingCart.copyWith(
      items: state.shoppingCart.items.map((e) {
        if (e.uuid == event.uuid) {
          return e.copyWith(quantity: e.quantity + 1);
        }
        return e;
      }).toList(),
    )));
  }

  FutureOr<void> _onRemoveAmount(
    _RemoveAmount event,
    Emitter<ShoppingCartState> emit,
  ) {
    emit(state.copyWith(
        shoppingCart: state.shoppingCart.copyWith(
      items: state.shoppingCart.items
          .map((e) {
            if (e.uuid == event.uuid) {
              return e.copyWith(quantity: e.quantity - 1);
            }
            return e;
          })
          .where((element) => element.quantity > 0)
          .toList(),
    )));
  }
}
