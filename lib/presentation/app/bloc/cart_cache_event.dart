part of 'cart_cache_bloc.dart';

@freezed
class AppCacheEvent with _$AppCacheEvent {
  const factory AppCacheEvent.started() = _Started;
  const factory AppCacheEvent.clearCart() = _ClearCart;
  const factory AppCacheEvent.loadCart(String? urlId) = _LoadCart;
  const factory AppCacheEvent.updateCart(ShoppingCartDto shoppingCartDto) =
      _UpdateCart;

  const factory AppCacheEvent.createItem(
    DetailsProductState detail, {
    required String establishmentUuid,
    required ProductDto product,
    required List<ChooseForAmount> choosesForAmount,
    required List<OneSelection> oneSelections,
    required List<MultipleSelection> multipleSelections,
  }) = _CreateItem;
}
