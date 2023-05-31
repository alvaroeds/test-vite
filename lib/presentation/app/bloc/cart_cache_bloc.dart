import 'dart:async';
import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/features/shared/core/uuid.dart';
import 'package:pedido_listo_web/features/shopping_car/domain/shopping_car_dto.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'cart_cache_event.dart';
part 'cart_cache_state.dart';
part 'cart_cache_bloc.freezed.dart';

class AppCacheBloc extends Bloc<AppCacheEvent, AppCacheState> {
  AppCacheBloc() : super(const AppCacheState()) {
    on<_CreateItem>(_createItem);
    on<_UpdateCart>(_updateCart);
    on<_ClearCart>(_clearCart);
    on<_LoadCart>(_loadCart);
  }

  FutureOr<void> _loadCart(_LoadCart event, Emitter<AppCacheState> emit) async {
    if (event.urlId == null) return;

    final prefs = await SharedPreferences.getInstance();

    final dataString = prefs.getString(event.urlId!);

    if (dataString == null) {
      emit(state.copyWith(cartCache: {
        ...state.cartCache,
        event.urlId!: ShoppingCartDto(uuid: event.urlId!)
      }));
      return;
    }

    final data = json.decode(dataString);

    final shoppingCartDto =
        ShoppingCartDto.fromJson(data as Map<String, dynamic>);

    emit(state.copyWith(cartCache: {
      ...state.cartCache,
      shoppingCartDto.uuid: shoppingCartDto
    }));
  }

  FutureOr<void> _createItem(
      _CreateItem event, Emitter<AppCacheState> emit) async {
    final item = ItemCart(
      product: event.product,
      uuid: Uuid().generateV4(),
      amount: event.detail.productQuantity,
      comment: event.detail.comment,
      extrasFood: event.choosesForAmount
          .map((modifier) => modifier.extras
              .where((extra) =>
                  event.detail.extrasAmountByModifier[extra.uuid] != null)
              .map((extra) => AmountExtraFood(
                  amount: event.detail.extrasAmountByModifier[extra.uuid]!,
                  uuidModifier: modifier.uuid,
                  extraFood: extra))
              .toList())
          .expand((element) => element)
          .toList(),
      optionsFoodOneSelection: event.oneSelections
          .where((modifier) =>
              event.detail.optionSelectedByModifier[modifier.uuid] != null)
          .map((modifier) =>
              event.detail.optionSelectedByModifier[modifier.uuid]!.fold(
                  () => <AmountOptionFood>[],
                  (uuid) => modifier.options
                      .where((option) => option.uuid == uuid)
                      .map((option) => AmountOptionFood(
                          optionFood: option, uuidModifier: modifier.uuid))
                      .toList()))
          .expand((element) => element)
          .toList(),
      optionsFoodForMultiple: event.multipleSelections
          .where((modifier) =>
              event.detail.multipleSelected[modifier.uuid] != null)
          .map((modifier) => modifier.options
              .where((element) => event.detail.multipleSelected[modifier.uuid]!
                  .contains(element.uuid))
              .map((option) => AmountOptionFood(
                  optionFood: option, uuidModifier: modifier.uuid)))
          .expand((element) => element)
          .toList(),
    );

    final shoppingCartDto = optionOf(state.cartCache[event.establishmentUuid])
        .map((cart) => cart.copyWith(items: [...cart.items, item]))
        .getOrElse(() => ShoppingCartDto(
              uuid: event.establishmentUuid,
              items: [item],
            ));

    emit(state.copyWith(cartCache: {
      ...state.cartCache,
      event.establishmentUuid: shoppingCartDto
    }));
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(
        shoppingCartDto.uuid, json.encode(shoppingCartDto.toJson()));
  }

  FutureOr<void> _updateCart(
      _UpdateCart event, Emitter<AppCacheState> emit) async {
    emit(state.copyWith(cartCache: {
      ...state.cartCache,
      event.shoppingCartDto.uuid: event.shoppingCartDto
    }));

    final prefs = await SharedPreferences.getInstance();

    await prefs.setString(event.shoppingCartDto.uuid,
        json.encode(event.shoppingCartDto.toJson()));
  }

  FutureOr<void> _clearCart(_ClearCart event, Emitter<AppCacheState> emit) {}
}
