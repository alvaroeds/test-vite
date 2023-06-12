part of 'app_cache_bloc.dart';

@freezed
class AppCacheState with _$AppCacheState {
  const factory AppCacheState({
    required UserDto user,
    @Default({}) Map<String, ShoppingCartDto> cartCache,
    @Default(false) bool isRedirectToSummary,
  }) = _AppCacheState;

  const AppCacheState._();

  int getAmountProduct(ProductDto product, String urlId) {
    final cart = cartCache[urlId];

    if (cart == null) return 0;

    return cart.items.fold(
        0,
        (previousValue, element) => element.product.uuid == product.uuid
            ? previousValue + element.quantity
            : previousValue);
  }
}
