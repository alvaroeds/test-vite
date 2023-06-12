import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pedido_listo_web/features/establishment/domain/modifiers.dart';
import 'package:pedido_listo_web/features/establishment/domain/product_dto.dart';
import 'package:pedido_listo_web/features/shopping_cart/application/load_cart.dart';
import 'package:pedido_listo_web/features/shopping_cart/application/save_cart.dart';
import 'package:pedido_listo_web/features/shopping_cart/domain/shopping_car_dto.dart';
import 'package:pedido_listo_web/features/user/application/save_user.dart';
import 'package:pedido_listo_web/features/user/domain/dto/address_dto.dart';
import 'package:pedido_listo_web/features/user/domain/dto/user_dto.dart';
import 'package:pedido_listo_web/presentation/establishment/details_product/bloc/details_product_bloc.dart';
import 'package:rxdart/rxdart.dart';

part 'app_cache_event.dart';
part 'app_cache_state.dart';
part 'app_cache_bloc.freezed.dart';

class AppCacheBloc extends Bloc<AppCacheEvent, AppCacheState> {
  final LoadCartUseCase _loadCartUseCase;
  final SaveCartUseCase _saveCartUseCase;
  final SaveUserUseCase _saveUserUseCase;
  AppCacheBloc(
    UserDto userDto,
    this._loadCartUseCase,
    this._saveCartUseCase,
    this._saveUserUseCase,
  ) : super(AppCacheState(user: userDto)) {
    on<_CreateItem>(_createItem);
    on<_UpdateCart>(_updateCart, transformer: (events, mappper) {
      return restartable<_UpdateCart>().call(
          events.debounceTime(const Duration(milliseconds: 1200)), mappper);
    });
    on<_ClearCart>(_clearCart);
    on<_LoadCart>(_loadCart);
    on<_SaveUser>(_saveUser, transformer: (events, mappper) {
      return restartable<_SaveUser>().call(
          events.debounceTime(const Duration(milliseconds: 1200)), mappper);
    });
    on<_CreateAddress>(_createAddress);
    on<_AddOrder>(_addOrder);
    on<_RemoveOrder>(_removeOrder);
  }

  FutureOr<void> _removeOrder(_RemoveOrder event, Emitter<AppCacheState> emit) {
    final user = state.user.copyWith(ordersAvailables: [
      ...state.user.ordersAvailables
          .where((element) => element != event.nroOrder),
    ]);

    emit(state.copyWith(user: user));

    return _saveUserUseCase.execute(user);
  }

  FutureOr<void> _addOrder(_AddOrder event, Emitter<AppCacheState> emit) {
    final user = state.user.copyWith(ordersAvailables: [
      ...state.user.ordersAvailables,
      event.nroOrder,
    ]);
    emit(state.copyWith(user: user));

    return _saveUserUseCase.execute(user);
  }

  FutureOr<void> _loadCart(_LoadCart event, Emitter<AppCacheState> emit) async {
    if (event.urlId == null) return;

    if (state.cartCache.containsKey(event.urlId)) return;

    final result = await _loadCartUseCase.execute(event.urlId!);

    emit(state.copyWith(cartCache: {
      ...state.cartCache,
      event.urlId!: result.fold(
        () => ShoppingCartDto(urlId: event.urlId!),
        (shoppingCartDto) => shoppingCartDto,
      )
    }));
  }

  FutureOr<void> _createItem(
      _CreateItem event, Emitter<AppCacheState> emit) async {
    final item = ItemCart(
      product: event.product,
      uuid: Uuid().generateV4(),
      quantity: event.detail.productQuantity,
      comment: event.detail.comment,
      extrasFood: event.choosesForAmount
          .map((modifier) => modifier.extras
              .where((extra) {
                final amount = event.detail.extrasAmountByModifier[extra.uuid];
                return amount != null && amount > 0;
              })
              .map((extra) => AmountExtraFood(
                  quantity: event.detail.extrasAmountByModifier[extra.uuid]!,
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
              urlId: event.establishmentUuid,
              items: [item],
            ));

    emit(state.copyWith(cartCache: {
      ...state.cartCache,
      event.establishmentUuid: shoppingCartDto
    }));

    await _saveCartUseCase.execute(shoppingCartDto);
  }

  FutureOr<void> _updateCart(
      _UpdateCart event, Emitter<AppCacheState> emit) async {
    emit(state.copyWith(cartCache: {
      ...state.cartCache,
      event.shoppingCartDto.urlId: event.shoppingCartDto
    }));

    await _saveCartUseCase.execute(event.shoppingCartDto);
  }

  FutureOr<void> _clearCart(_ClearCart event, Emitter<AppCacheState> emit) {
    final cart = ShoppingCartDto(urlId: event.urlId);

    emit(state.copyWith(
        isRedirectToSummary: true,
        cartCache: {...state.cartCache, event.urlId: cart}));

    _saveCartUseCase.execute(cart);
  }

  FutureOr<void> _saveUser(_SaveUser event, Emitter<AppCacheState> emit) {
    final user = state.user.copyWith(name: event.name, phone: event.phone);

    emit(state.copyWith(user: user));

    _saveUserUseCase.execute(user);
  }

  FutureOr<void> _createAddress(
    _CreateAddress event,
    Emitter<AppCacheState> emit,
  ) async {
    if (event.address.isEmpty) return;

    final address = AddressDto.create(event.address);

    final user = state.user.copyWith(addresses: [
      ...state.user.addresses,
      address,
    ]);

    emit(state.copyWith(user: user));

    return _saveUserUseCase.execute(user);
  }
}
