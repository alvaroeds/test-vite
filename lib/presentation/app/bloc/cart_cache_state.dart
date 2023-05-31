part of 'cart_cache_bloc.dart';

@freezed
class AppCacheState with _$AppCacheState {
  const factory AppCacheState({
    @Default({}) Map<String, ShoppingCartDto> cartCache,
  }) = _CartCacheState;
}
