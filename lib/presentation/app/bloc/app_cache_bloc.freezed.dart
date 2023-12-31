// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'app_cache_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AppCacheEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SummaryDto? summary) updateCurrentSummary,
    required TResult Function(String urlId) clearCart,
    required TResult Function(String? urlId) loadCart,
    required TResult Function(ShoppingCartDto shoppingCartDto) updateCart,
    required TResult Function(String name, String phone) saveUser,
    required TResult Function(String address) createAddress,
    required TResult Function(String nroOrder) addOrder,
    required TResult Function(String nroOrder) removeOrder,
    required TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)
        createItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SummaryDto? summary)? updateCurrentSummary,
    TResult? Function(String urlId)? clearCart,
    TResult? Function(String? urlId)? loadCart,
    TResult? Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult? Function(String name, String phone)? saveUser,
    TResult? Function(String address)? createAddress,
    TResult? Function(String nroOrder)? addOrder,
    TResult? Function(String nroOrder)? removeOrder,
    TResult? Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SummaryDto? summary)? updateCurrentSummary,
    TResult Function(String urlId)? clearCart,
    TResult Function(String? urlId)? loadCart,
    TResult Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult Function(String name, String phone)? saveUser,
    TResult Function(String address)? createAddress,
    TResult Function(String nroOrder)? addOrder,
    TResult Function(String nroOrder)? removeOrder,
    TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCurrentSummary value) updateCurrentSummary,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_CreateAddress value) createAddress,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_RemoveOrder value) removeOrder,
    required TResult Function(_CreateItem value) createItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_LoadCart value)? loadCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_CreateAddress value)? createAddress,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_RemoveOrder value)? removeOrder,
    TResult? Function(_CreateItem value)? createItem,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_CreateAddress value)? createAddress,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_RemoveOrder value)? removeOrder,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCacheEventCopyWith<$Res> {
  factory $AppCacheEventCopyWith(
          AppCacheEvent value, $Res Function(AppCacheEvent) then) =
      _$AppCacheEventCopyWithImpl<$Res, AppCacheEvent>;
}

/// @nodoc
class _$AppCacheEventCopyWithImpl<$Res, $Val extends AppCacheEvent>
    implements $AppCacheEventCopyWith<$Res> {
  _$AppCacheEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$AppCacheEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'AppCacheEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SummaryDto? summary) updateCurrentSummary,
    required TResult Function(String urlId) clearCart,
    required TResult Function(String? urlId) loadCart,
    required TResult Function(ShoppingCartDto shoppingCartDto) updateCart,
    required TResult Function(String name, String phone) saveUser,
    required TResult Function(String address) createAddress,
    required TResult Function(String nroOrder) addOrder,
    required TResult Function(String nroOrder) removeOrder,
    required TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)
        createItem,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SummaryDto? summary)? updateCurrentSummary,
    TResult? Function(String urlId)? clearCart,
    TResult? Function(String? urlId)? loadCart,
    TResult? Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult? Function(String name, String phone)? saveUser,
    TResult? Function(String address)? createAddress,
    TResult? Function(String nroOrder)? addOrder,
    TResult? Function(String nroOrder)? removeOrder,
    TResult? Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SummaryDto? summary)? updateCurrentSummary,
    TResult Function(String urlId)? clearCart,
    TResult Function(String? urlId)? loadCart,
    TResult Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult Function(String name, String phone)? saveUser,
    TResult Function(String address)? createAddress,
    TResult Function(String nroOrder)? addOrder,
    TResult Function(String nroOrder)? removeOrder,
    TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCurrentSummary value) updateCurrentSummary,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_CreateAddress value) createAddress,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_RemoveOrder value) removeOrder,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_LoadCart value)? loadCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_CreateAddress value)? createAddress,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_RemoveOrder value)? removeOrder,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_CreateAddress value)? createAddress,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_RemoveOrder value)? removeOrder,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements AppCacheEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_UpdateCurrentSummaryCopyWith<$Res> {
  factory _$$_UpdateCurrentSummaryCopyWith(_$_UpdateCurrentSummary value,
          $Res Function(_$_UpdateCurrentSummary) then) =
      __$$_UpdateCurrentSummaryCopyWithImpl<$Res>;
  @useResult
  $Res call({SummaryDto? summary});

  $SummaryDtoCopyWith<$Res>? get summary;
}

/// @nodoc
class __$$_UpdateCurrentSummaryCopyWithImpl<$Res>
    extends _$AppCacheEventCopyWithImpl<$Res, _$_UpdateCurrentSummary>
    implements _$$_UpdateCurrentSummaryCopyWith<$Res> {
  __$$_UpdateCurrentSummaryCopyWithImpl(_$_UpdateCurrentSummary _value,
      $Res Function(_$_UpdateCurrentSummary) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = freezed,
  }) {
    return _then(_$_UpdateCurrentSummary(
      summary: freezed == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as SummaryDto?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryDtoCopyWith<$Res>? get summary {
    if (_value.summary == null) {
      return null;
    }

    return $SummaryDtoCopyWith<$Res>(_value.summary!, (value) {
      return _then(_value.copyWith(summary: value));
    });
  }
}

/// @nodoc

class _$_UpdateCurrentSummary implements _UpdateCurrentSummary {
  const _$_UpdateCurrentSummary({this.summary});

  @override
  final SummaryDto? summary;

  @override
  String toString() {
    return 'AppCacheEvent.updateCurrentSummary(summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCurrentSummary &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCurrentSummaryCopyWith<_$_UpdateCurrentSummary> get copyWith =>
      __$$_UpdateCurrentSummaryCopyWithImpl<_$_UpdateCurrentSummary>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SummaryDto? summary) updateCurrentSummary,
    required TResult Function(String urlId) clearCart,
    required TResult Function(String? urlId) loadCart,
    required TResult Function(ShoppingCartDto shoppingCartDto) updateCart,
    required TResult Function(String name, String phone) saveUser,
    required TResult Function(String address) createAddress,
    required TResult Function(String nroOrder) addOrder,
    required TResult Function(String nroOrder) removeOrder,
    required TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)
        createItem,
  }) {
    return updateCurrentSummary(summary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SummaryDto? summary)? updateCurrentSummary,
    TResult? Function(String urlId)? clearCart,
    TResult? Function(String? urlId)? loadCart,
    TResult? Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult? Function(String name, String phone)? saveUser,
    TResult? Function(String address)? createAddress,
    TResult? Function(String nroOrder)? addOrder,
    TResult? Function(String nroOrder)? removeOrder,
    TResult? Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
  }) {
    return updateCurrentSummary?.call(summary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SummaryDto? summary)? updateCurrentSummary,
    TResult Function(String urlId)? clearCart,
    TResult Function(String? urlId)? loadCart,
    TResult Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult Function(String name, String phone)? saveUser,
    TResult Function(String address)? createAddress,
    TResult Function(String nroOrder)? addOrder,
    TResult Function(String nroOrder)? removeOrder,
    TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
    required TResult orElse(),
  }) {
    if (updateCurrentSummary != null) {
      return updateCurrentSummary(summary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCurrentSummary value) updateCurrentSummary,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_CreateAddress value) createAddress,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_RemoveOrder value) removeOrder,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return updateCurrentSummary(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_LoadCart value)? loadCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_CreateAddress value)? createAddress,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_RemoveOrder value)? removeOrder,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return updateCurrentSummary?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_CreateAddress value)? createAddress,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_RemoveOrder value)? removeOrder,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (updateCurrentSummary != null) {
      return updateCurrentSummary(this);
    }
    return orElse();
  }
}

abstract class _UpdateCurrentSummary implements AppCacheEvent {
  const factory _UpdateCurrentSummary({final SummaryDto? summary}) =
      _$_UpdateCurrentSummary;

  SummaryDto? get summary;
  @JsonKey(ignore: true)
  _$$_UpdateCurrentSummaryCopyWith<_$_UpdateCurrentSummary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ClearCartCopyWith<$Res> {
  factory _$$_ClearCartCopyWith(
          _$_ClearCart value, $Res Function(_$_ClearCart) then) =
      __$$_ClearCartCopyWithImpl<$Res>;
  @useResult
  $Res call({String urlId});
}

/// @nodoc
class __$$_ClearCartCopyWithImpl<$Res>
    extends _$AppCacheEventCopyWithImpl<$Res, _$_ClearCart>
    implements _$$_ClearCartCopyWith<$Res> {
  __$$_ClearCartCopyWithImpl(
      _$_ClearCart _value, $Res Function(_$_ClearCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlId = null,
  }) {
    return _then(_$_ClearCart(
      null == urlId
          ? _value.urlId
          : urlId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ClearCart implements _ClearCart {
  const _$_ClearCart(this.urlId);

  @override
  final String urlId;

  @override
  String toString() {
    return 'AppCacheEvent.clearCart(urlId: $urlId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ClearCart &&
            (identical(other.urlId, urlId) || other.urlId == urlId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, urlId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ClearCartCopyWith<_$_ClearCart> get copyWith =>
      __$$_ClearCartCopyWithImpl<_$_ClearCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SummaryDto? summary) updateCurrentSummary,
    required TResult Function(String urlId) clearCart,
    required TResult Function(String? urlId) loadCart,
    required TResult Function(ShoppingCartDto shoppingCartDto) updateCart,
    required TResult Function(String name, String phone) saveUser,
    required TResult Function(String address) createAddress,
    required TResult Function(String nroOrder) addOrder,
    required TResult Function(String nroOrder) removeOrder,
    required TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)
        createItem,
  }) {
    return clearCart(urlId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SummaryDto? summary)? updateCurrentSummary,
    TResult? Function(String urlId)? clearCart,
    TResult? Function(String? urlId)? loadCart,
    TResult? Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult? Function(String name, String phone)? saveUser,
    TResult? Function(String address)? createAddress,
    TResult? Function(String nroOrder)? addOrder,
    TResult? Function(String nroOrder)? removeOrder,
    TResult? Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
  }) {
    return clearCart?.call(urlId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SummaryDto? summary)? updateCurrentSummary,
    TResult Function(String urlId)? clearCart,
    TResult Function(String? urlId)? loadCart,
    TResult Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult Function(String name, String phone)? saveUser,
    TResult Function(String address)? createAddress,
    TResult Function(String nroOrder)? addOrder,
    TResult Function(String nroOrder)? removeOrder,
    TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(urlId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCurrentSummary value) updateCurrentSummary,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_CreateAddress value) createAddress,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_RemoveOrder value) removeOrder,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return clearCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_LoadCart value)? loadCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_CreateAddress value)? createAddress,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_RemoveOrder value)? removeOrder,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return clearCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_CreateAddress value)? createAddress,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_RemoveOrder value)? removeOrder,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (clearCart != null) {
      return clearCart(this);
    }
    return orElse();
  }
}

abstract class _ClearCart implements AppCacheEvent {
  const factory _ClearCart(final String urlId) = _$_ClearCart;

  String get urlId;
  @JsonKey(ignore: true)
  _$$_ClearCartCopyWith<_$_ClearCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_LoadCartCopyWith<$Res> {
  factory _$$_LoadCartCopyWith(
          _$_LoadCart value, $Res Function(_$_LoadCart) then) =
      __$$_LoadCartCopyWithImpl<$Res>;
  @useResult
  $Res call({String? urlId});
}

/// @nodoc
class __$$_LoadCartCopyWithImpl<$Res>
    extends _$AppCacheEventCopyWithImpl<$Res, _$_LoadCart>
    implements _$$_LoadCartCopyWith<$Res> {
  __$$_LoadCartCopyWithImpl(
      _$_LoadCart _value, $Res Function(_$_LoadCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? urlId = freezed,
  }) {
    return _then(_$_LoadCart(
      freezed == urlId
          ? _value.urlId
          : urlId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_LoadCart implements _LoadCart {
  const _$_LoadCart(this.urlId);

  @override
  final String? urlId;

  @override
  String toString() {
    return 'AppCacheEvent.loadCart(urlId: $urlId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadCart &&
            (identical(other.urlId, urlId) || other.urlId == urlId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, urlId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoadCartCopyWith<_$_LoadCart> get copyWith =>
      __$$_LoadCartCopyWithImpl<_$_LoadCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SummaryDto? summary) updateCurrentSummary,
    required TResult Function(String urlId) clearCart,
    required TResult Function(String? urlId) loadCart,
    required TResult Function(ShoppingCartDto shoppingCartDto) updateCart,
    required TResult Function(String name, String phone) saveUser,
    required TResult Function(String address) createAddress,
    required TResult Function(String nroOrder) addOrder,
    required TResult Function(String nroOrder) removeOrder,
    required TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)
        createItem,
  }) {
    return loadCart(urlId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SummaryDto? summary)? updateCurrentSummary,
    TResult? Function(String urlId)? clearCart,
    TResult? Function(String? urlId)? loadCart,
    TResult? Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult? Function(String name, String phone)? saveUser,
    TResult? Function(String address)? createAddress,
    TResult? Function(String nroOrder)? addOrder,
    TResult? Function(String nroOrder)? removeOrder,
    TResult? Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
  }) {
    return loadCart?.call(urlId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SummaryDto? summary)? updateCurrentSummary,
    TResult Function(String urlId)? clearCart,
    TResult Function(String? urlId)? loadCart,
    TResult Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult Function(String name, String phone)? saveUser,
    TResult Function(String address)? createAddress,
    TResult Function(String nroOrder)? addOrder,
    TResult Function(String nroOrder)? removeOrder,
    TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
    required TResult orElse(),
  }) {
    if (loadCart != null) {
      return loadCart(urlId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCurrentSummary value) updateCurrentSummary,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_CreateAddress value) createAddress,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_RemoveOrder value) removeOrder,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return loadCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_LoadCart value)? loadCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_CreateAddress value)? createAddress,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_RemoveOrder value)? removeOrder,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return loadCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_CreateAddress value)? createAddress,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_RemoveOrder value)? removeOrder,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (loadCart != null) {
      return loadCart(this);
    }
    return orElse();
  }
}

abstract class _LoadCart implements AppCacheEvent {
  const factory _LoadCart(final String? urlId) = _$_LoadCart;

  String? get urlId;
  @JsonKey(ignore: true)
  _$$_LoadCartCopyWith<_$_LoadCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCartCopyWith<$Res> {
  factory _$$_UpdateCartCopyWith(
          _$_UpdateCart value, $Res Function(_$_UpdateCart) then) =
      __$$_UpdateCartCopyWithImpl<$Res>;
  @useResult
  $Res call({ShoppingCartDto shoppingCartDto});

  $ShoppingCartDtoCopyWith<$Res> get shoppingCartDto;
}

/// @nodoc
class __$$_UpdateCartCopyWithImpl<$Res>
    extends _$AppCacheEventCopyWithImpl<$Res, _$_UpdateCart>
    implements _$$_UpdateCartCopyWith<$Res> {
  __$$_UpdateCartCopyWithImpl(
      _$_UpdateCart _value, $Res Function(_$_UpdateCart) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoppingCartDto = null,
  }) {
    return _then(_$_UpdateCart(
      null == shoppingCartDto
          ? _value.shoppingCartDto
          : shoppingCartDto // ignore: cast_nullable_to_non_nullable
              as ShoppingCartDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ShoppingCartDtoCopyWith<$Res> get shoppingCartDto {
    return $ShoppingCartDtoCopyWith<$Res>(_value.shoppingCartDto, (value) {
      return _then(_value.copyWith(shoppingCartDto: value));
    });
  }
}

/// @nodoc

class _$_UpdateCart implements _UpdateCart {
  const _$_UpdateCart(this.shoppingCartDto);

  @override
  final ShoppingCartDto shoppingCartDto;

  @override
  String toString() {
    return 'AppCacheEvent.updateCart(shoppingCartDto: $shoppingCartDto)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCart &&
            (identical(other.shoppingCartDto, shoppingCartDto) ||
                other.shoppingCartDto == shoppingCartDto));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shoppingCartDto);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCartCopyWith<_$_UpdateCart> get copyWith =>
      __$$_UpdateCartCopyWithImpl<_$_UpdateCart>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SummaryDto? summary) updateCurrentSummary,
    required TResult Function(String urlId) clearCart,
    required TResult Function(String? urlId) loadCart,
    required TResult Function(ShoppingCartDto shoppingCartDto) updateCart,
    required TResult Function(String name, String phone) saveUser,
    required TResult Function(String address) createAddress,
    required TResult Function(String nroOrder) addOrder,
    required TResult Function(String nroOrder) removeOrder,
    required TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)
        createItem,
  }) {
    return updateCart(shoppingCartDto);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SummaryDto? summary)? updateCurrentSummary,
    TResult? Function(String urlId)? clearCart,
    TResult? Function(String? urlId)? loadCart,
    TResult? Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult? Function(String name, String phone)? saveUser,
    TResult? Function(String address)? createAddress,
    TResult? Function(String nroOrder)? addOrder,
    TResult? Function(String nroOrder)? removeOrder,
    TResult? Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
  }) {
    return updateCart?.call(shoppingCartDto);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SummaryDto? summary)? updateCurrentSummary,
    TResult Function(String urlId)? clearCart,
    TResult Function(String? urlId)? loadCart,
    TResult Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult Function(String name, String phone)? saveUser,
    TResult Function(String address)? createAddress,
    TResult Function(String nroOrder)? addOrder,
    TResult Function(String nroOrder)? removeOrder,
    TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(shoppingCartDto);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCurrentSummary value) updateCurrentSummary,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_CreateAddress value) createAddress,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_RemoveOrder value) removeOrder,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return updateCart(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_LoadCart value)? loadCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_CreateAddress value)? createAddress,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_RemoveOrder value)? removeOrder,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return updateCart?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_CreateAddress value)? createAddress,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_RemoveOrder value)? removeOrder,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (updateCart != null) {
      return updateCart(this);
    }
    return orElse();
  }
}

abstract class _UpdateCart implements AppCacheEvent {
  const factory _UpdateCart(final ShoppingCartDto shoppingCartDto) =
      _$_UpdateCart;

  ShoppingCartDto get shoppingCartDto;
  @JsonKey(ignore: true)
  _$$_UpdateCartCopyWith<_$_UpdateCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SaveUserCopyWith<$Res> {
  factory _$$_SaveUserCopyWith(
          _$_SaveUser value, $Res Function(_$_SaveUser) then) =
      __$$_SaveUserCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String phone});
}

/// @nodoc
class __$$_SaveUserCopyWithImpl<$Res>
    extends _$AppCacheEventCopyWithImpl<$Res, _$_SaveUser>
    implements _$$_SaveUserCopyWith<$Res> {
  __$$_SaveUserCopyWithImpl(
      _$_SaveUser _value, $Res Function(_$_SaveUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? phone = null,
  }) {
    return _then(_$_SaveUser(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SaveUser implements _SaveUser {
  const _$_SaveUser({required this.name, required this.phone});

  @override
  final String name;
  @override
  final String phone;

  @override
  String toString() {
    return 'AppCacheEvent.saveUser(name: $name, phone: $phone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SaveUser &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SaveUserCopyWith<_$_SaveUser> get copyWith =>
      __$$_SaveUserCopyWithImpl<_$_SaveUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SummaryDto? summary) updateCurrentSummary,
    required TResult Function(String urlId) clearCart,
    required TResult Function(String? urlId) loadCart,
    required TResult Function(ShoppingCartDto shoppingCartDto) updateCart,
    required TResult Function(String name, String phone) saveUser,
    required TResult Function(String address) createAddress,
    required TResult Function(String nroOrder) addOrder,
    required TResult Function(String nroOrder) removeOrder,
    required TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)
        createItem,
  }) {
    return saveUser(name, phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SummaryDto? summary)? updateCurrentSummary,
    TResult? Function(String urlId)? clearCart,
    TResult? Function(String? urlId)? loadCart,
    TResult? Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult? Function(String name, String phone)? saveUser,
    TResult? Function(String address)? createAddress,
    TResult? Function(String nroOrder)? addOrder,
    TResult? Function(String nroOrder)? removeOrder,
    TResult? Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
  }) {
    return saveUser?.call(name, phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SummaryDto? summary)? updateCurrentSummary,
    TResult Function(String urlId)? clearCart,
    TResult Function(String? urlId)? loadCart,
    TResult Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult Function(String name, String phone)? saveUser,
    TResult Function(String address)? createAddress,
    TResult Function(String nroOrder)? addOrder,
    TResult Function(String nroOrder)? removeOrder,
    TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(name, phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCurrentSummary value) updateCurrentSummary,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_CreateAddress value) createAddress,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_RemoveOrder value) removeOrder,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return saveUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_LoadCart value)? loadCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_CreateAddress value)? createAddress,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_RemoveOrder value)? removeOrder,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return saveUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_CreateAddress value)? createAddress,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_RemoveOrder value)? removeOrder,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (saveUser != null) {
      return saveUser(this);
    }
    return orElse();
  }
}

abstract class _SaveUser implements AppCacheEvent {
  const factory _SaveUser(
      {required final String name, required final String phone}) = _$_SaveUser;

  String get name;
  String get phone;
  @JsonKey(ignore: true)
  _$$_SaveUserCopyWith<_$_SaveUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateAddressCopyWith<$Res> {
  factory _$$_CreateAddressCopyWith(
          _$_CreateAddress value, $Res Function(_$_CreateAddress) then) =
      __$$_CreateAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$_CreateAddressCopyWithImpl<$Res>
    extends _$AppCacheEventCopyWithImpl<$Res, _$_CreateAddress>
    implements _$$_CreateAddressCopyWith<$Res> {
  __$$_CreateAddressCopyWithImpl(
      _$_CreateAddress _value, $Res Function(_$_CreateAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$_CreateAddress(
      null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_CreateAddress implements _CreateAddress {
  const _$_CreateAddress(this.address);

  @override
  final String address;

  @override
  String toString() {
    return 'AppCacheEvent.createAddress(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateAddress &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateAddressCopyWith<_$_CreateAddress> get copyWith =>
      __$$_CreateAddressCopyWithImpl<_$_CreateAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SummaryDto? summary) updateCurrentSummary,
    required TResult Function(String urlId) clearCart,
    required TResult Function(String? urlId) loadCart,
    required TResult Function(ShoppingCartDto shoppingCartDto) updateCart,
    required TResult Function(String name, String phone) saveUser,
    required TResult Function(String address) createAddress,
    required TResult Function(String nroOrder) addOrder,
    required TResult Function(String nroOrder) removeOrder,
    required TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)
        createItem,
  }) {
    return createAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SummaryDto? summary)? updateCurrentSummary,
    TResult? Function(String urlId)? clearCart,
    TResult? Function(String? urlId)? loadCart,
    TResult? Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult? Function(String name, String phone)? saveUser,
    TResult? Function(String address)? createAddress,
    TResult? Function(String nroOrder)? addOrder,
    TResult? Function(String nroOrder)? removeOrder,
    TResult? Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
  }) {
    return createAddress?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SummaryDto? summary)? updateCurrentSummary,
    TResult Function(String urlId)? clearCart,
    TResult Function(String? urlId)? loadCart,
    TResult Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult Function(String name, String phone)? saveUser,
    TResult Function(String address)? createAddress,
    TResult Function(String nroOrder)? addOrder,
    TResult Function(String nroOrder)? removeOrder,
    TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
    required TResult orElse(),
  }) {
    if (createAddress != null) {
      return createAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCurrentSummary value) updateCurrentSummary,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_CreateAddress value) createAddress,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_RemoveOrder value) removeOrder,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return createAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_LoadCart value)? loadCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_CreateAddress value)? createAddress,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_RemoveOrder value)? removeOrder,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return createAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_CreateAddress value)? createAddress,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_RemoveOrder value)? removeOrder,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (createAddress != null) {
      return createAddress(this);
    }
    return orElse();
  }
}

abstract class _CreateAddress implements AppCacheEvent {
  const factory _CreateAddress(final String address) = _$_CreateAddress;

  String get address;
  @JsonKey(ignore: true)
  _$$_CreateAddressCopyWith<_$_CreateAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AddOrderCopyWith<$Res> {
  factory _$$_AddOrderCopyWith(
          _$_AddOrder value, $Res Function(_$_AddOrder) then) =
      __$$_AddOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({String nroOrder});
}

/// @nodoc
class __$$_AddOrderCopyWithImpl<$Res>
    extends _$AppCacheEventCopyWithImpl<$Res, _$_AddOrder>
    implements _$$_AddOrderCopyWith<$Res> {
  __$$_AddOrderCopyWithImpl(
      _$_AddOrder _value, $Res Function(_$_AddOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nroOrder = null,
  }) {
    return _then(_$_AddOrder(
      null == nroOrder
          ? _value.nroOrder
          : nroOrder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddOrder implements _AddOrder {
  const _$_AddOrder(this.nroOrder);

  @override
  final String nroOrder;

  @override
  String toString() {
    return 'AppCacheEvent.addOrder(nroOrder: $nroOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddOrder &&
            (identical(other.nroOrder, nroOrder) ||
                other.nroOrder == nroOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nroOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddOrderCopyWith<_$_AddOrder> get copyWith =>
      __$$_AddOrderCopyWithImpl<_$_AddOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SummaryDto? summary) updateCurrentSummary,
    required TResult Function(String urlId) clearCart,
    required TResult Function(String? urlId) loadCart,
    required TResult Function(ShoppingCartDto shoppingCartDto) updateCart,
    required TResult Function(String name, String phone) saveUser,
    required TResult Function(String address) createAddress,
    required TResult Function(String nroOrder) addOrder,
    required TResult Function(String nroOrder) removeOrder,
    required TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)
        createItem,
  }) {
    return addOrder(nroOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SummaryDto? summary)? updateCurrentSummary,
    TResult? Function(String urlId)? clearCart,
    TResult? Function(String? urlId)? loadCart,
    TResult? Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult? Function(String name, String phone)? saveUser,
    TResult? Function(String address)? createAddress,
    TResult? Function(String nroOrder)? addOrder,
    TResult? Function(String nroOrder)? removeOrder,
    TResult? Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
  }) {
    return addOrder?.call(nroOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SummaryDto? summary)? updateCurrentSummary,
    TResult Function(String urlId)? clearCart,
    TResult Function(String? urlId)? loadCart,
    TResult Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult Function(String name, String phone)? saveUser,
    TResult Function(String address)? createAddress,
    TResult Function(String nroOrder)? addOrder,
    TResult Function(String nroOrder)? removeOrder,
    TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(nroOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCurrentSummary value) updateCurrentSummary,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_CreateAddress value) createAddress,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_RemoveOrder value) removeOrder,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return addOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_LoadCart value)? loadCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_CreateAddress value)? createAddress,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_RemoveOrder value)? removeOrder,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return addOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_CreateAddress value)? createAddress,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_RemoveOrder value)? removeOrder,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (addOrder != null) {
      return addOrder(this);
    }
    return orElse();
  }
}

abstract class _AddOrder implements AppCacheEvent {
  const factory _AddOrder(final String nroOrder) = _$_AddOrder;

  String get nroOrder;
  @JsonKey(ignore: true)
  _$$_AddOrderCopyWith<_$_AddOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveOrderCopyWith<$Res> {
  factory _$$_RemoveOrderCopyWith(
          _$_RemoveOrder value, $Res Function(_$_RemoveOrder) then) =
      __$$_RemoveOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({String nroOrder});
}

/// @nodoc
class __$$_RemoveOrderCopyWithImpl<$Res>
    extends _$AppCacheEventCopyWithImpl<$Res, _$_RemoveOrder>
    implements _$$_RemoveOrderCopyWith<$Res> {
  __$$_RemoveOrderCopyWithImpl(
      _$_RemoveOrder _value, $Res Function(_$_RemoveOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nroOrder = null,
  }) {
    return _then(_$_RemoveOrder(
      null == nroOrder
          ? _value.nroOrder
          : nroOrder // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveOrder implements _RemoveOrder {
  const _$_RemoveOrder(this.nroOrder);

  @override
  final String nroOrder;

  @override
  String toString() {
    return 'AppCacheEvent.removeOrder(nroOrder: $nroOrder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveOrder &&
            (identical(other.nroOrder, nroOrder) ||
                other.nroOrder == nroOrder));
  }

  @override
  int get hashCode => Object.hash(runtimeType, nroOrder);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveOrderCopyWith<_$_RemoveOrder> get copyWith =>
      __$$_RemoveOrderCopyWithImpl<_$_RemoveOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SummaryDto? summary) updateCurrentSummary,
    required TResult Function(String urlId) clearCart,
    required TResult Function(String? urlId) loadCart,
    required TResult Function(ShoppingCartDto shoppingCartDto) updateCart,
    required TResult Function(String name, String phone) saveUser,
    required TResult Function(String address) createAddress,
    required TResult Function(String nroOrder) addOrder,
    required TResult Function(String nroOrder) removeOrder,
    required TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)
        createItem,
  }) {
    return removeOrder(nroOrder);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SummaryDto? summary)? updateCurrentSummary,
    TResult? Function(String urlId)? clearCart,
    TResult? Function(String? urlId)? loadCart,
    TResult? Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult? Function(String name, String phone)? saveUser,
    TResult? Function(String address)? createAddress,
    TResult? Function(String nroOrder)? addOrder,
    TResult? Function(String nroOrder)? removeOrder,
    TResult? Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
  }) {
    return removeOrder?.call(nroOrder);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SummaryDto? summary)? updateCurrentSummary,
    TResult Function(String urlId)? clearCart,
    TResult Function(String? urlId)? loadCart,
    TResult Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult Function(String name, String phone)? saveUser,
    TResult Function(String address)? createAddress,
    TResult Function(String nroOrder)? addOrder,
    TResult Function(String nroOrder)? removeOrder,
    TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
    required TResult orElse(),
  }) {
    if (removeOrder != null) {
      return removeOrder(nroOrder);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCurrentSummary value) updateCurrentSummary,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_CreateAddress value) createAddress,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_RemoveOrder value) removeOrder,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return removeOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_LoadCart value)? loadCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_CreateAddress value)? createAddress,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_RemoveOrder value)? removeOrder,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return removeOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_CreateAddress value)? createAddress,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_RemoveOrder value)? removeOrder,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (removeOrder != null) {
      return removeOrder(this);
    }
    return orElse();
  }
}

abstract class _RemoveOrder implements AppCacheEvent {
  const factory _RemoveOrder(final String nroOrder) = _$_RemoveOrder;

  String get nroOrder;
  @JsonKey(ignore: true)
  _$$_RemoveOrderCopyWith<_$_RemoveOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateItemCopyWith<$Res> {
  factory _$$_CreateItemCopyWith(
          _$_CreateItem value, $Res Function(_$_CreateItem) then) =
      __$$_CreateItemCopyWithImpl<$Res>;
  @useResult
  $Res call(
      {DetailsProductState detail,
      String establishmentUuid,
      ProductDto product,
      List<ChooseForAmount> choosesForAmount,
      List<OneSelection> oneSelections,
      List<MultipleSelection> multipleSelections});

  $DetailsProductStateCopyWith<$Res> get detail;
  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class __$$_CreateItemCopyWithImpl<$Res>
    extends _$AppCacheEventCopyWithImpl<$Res, _$_CreateItem>
    implements _$$_CreateItemCopyWith<$Res> {
  __$$_CreateItemCopyWithImpl(
      _$_CreateItem _value, $Res Function(_$_CreateItem) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? detail = null,
    Object? establishmentUuid = null,
    Object? product = null,
    Object? choosesForAmount = null,
    Object? oneSelections = null,
    Object? multipleSelections = null,
  }) {
    return _then(_$_CreateItem(
      null == detail
          ? _value.detail
          : detail // ignore: cast_nullable_to_non_nullable
              as DetailsProductState,
      establishmentUuid: null == establishmentUuid
          ? _value.establishmentUuid
          : establishmentUuid // ignore: cast_nullable_to_non_nullable
              as String,
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      choosesForAmount: null == choosesForAmount
          ? _value._choosesForAmount
          : choosesForAmount // ignore: cast_nullable_to_non_nullable
              as List<ChooseForAmount>,
      oneSelections: null == oneSelections
          ? _value._oneSelections
          : oneSelections // ignore: cast_nullable_to_non_nullable
              as List<OneSelection>,
      multipleSelections: null == multipleSelections
          ? _value._multipleSelections
          : multipleSelections // ignore: cast_nullable_to_non_nullable
              as List<MultipleSelection>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DetailsProductStateCopyWith<$Res> get detail {
    return $DetailsProductStateCopyWith<$Res>(_value.detail, (value) {
      return _then(_value.copyWith(detail: value));
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res> get product {
    return $ProductDtoCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value));
    });
  }
}

/// @nodoc

class _$_CreateItem implements _CreateItem {
  const _$_CreateItem(this.detail,
      {required this.establishmentUuid,
      required this.product,
      required final List<ChooseForAmount> choosesForAmount,
      required final List<OneSelection> oneSelections,
      required final List<MultipleSelection> multipleSelections})
      : _choosesForAmount = choosesForAmount,
        _oneSelections = oneSelections,
        _multipleSelections = multipleSelections;

  @override
  final DetailsProductState detail;
  @override
  final String establishmentUuid;
  @override
  final ProductDto product;
  final List<ChooseForAmount> _choosesForAmount;
  @override
  List<ChooseForAmount> get choosesForAmount {
    if (_choosesForAmount is EqualUnmodifiableListView)
      return _choosesForAmount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_choosesForAmount);
  }

  final List<OneSelection> _oneSelections;
  @override
  List<OneSelection> get oneSelections {
    if (_oneSelections is EqualUnmodifiableListView) return _oneSelections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oneSelections);
  }

  final List<MultipleSelection> _multipleSelections;
  @override
  List<MultipleSelection> get multipleSelections {
    if (_multipleSelections is EqualUnmodifiableListView)
      return _multipleSelections;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_multipleSelections);
  }

  @override
  String toString() {
    return 'AppCacheEvent.createItem(detail: $detail, establishmentUuid: $establishmentUuid, product: $product, choosesForAmount: $choosesForAmount, oneSelections: $oneSelections, multipleSelections: $multipleSelections)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CreateItem &&
            (identical(other.detail, detail) || other.detail == detail) &&
            (identical(other.establishmentUuid, establishmentUuid) ||
                other.establishmentUuid == establishmentUuid) &&
            (identical(other.product, product) || other.product == product) &&
            const DeepCollectionEquality()
                .equals(other._choosesForAmount, _choosesForAmount) &&
            const DeepCollectionEquality()
                .equals(other._oneSelections, _oneSelections) &&
            const DeepCollectionEquality()
                .equals(other._multipleSelections, _multipleSelections));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      detail,
      establishmentUuid,
      product,
      const DeepCollectionEquality().hash(_choosesForAmount),
      const DeepCollectionEquality().hash(_oneSelections),
      const DeepCollectionEquality().hash(_multipleSelections));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateItemCopyWith<_$_CreateItem> get copyWith =>
      __$$_CreateItemCopyWithImpl<_$_CreateItem>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(SummaryDto? summary) updateCurrentSummary,
    required TResult Function(String urlId) clearCart,
    required TResult Function(String? urlId) loadCart,
    required TResult Function(ShoppingCartDto shoppingCartDto) updateCart,
    required TResult Function(String name, String phone) saveUser,
    required TResult Function(String address) createAddress,
    required TResult Function(String nroOrder) addOrder,
    required TResult Function(String nroOrder) removeOrder,
    required TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)
        createItem,
  }) {
    return createItem(detail, establishmentUuid, product, choosesForAmount,
        oneSelections, multipleSelections);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(SummaryDto? summary)? updateCurrentSummary,
    TResult? Function(String urlId)? clearCart,
    TResult? Function(String? urlId)? loadCart,
    TResult? Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult? Function(String name, String phone)? saveUser,
    TResult? Function(String address)? createAddress,
    TResult? Function(String nroOrder)? addOrder,
    TResult? Function(String nroOrder)? removeOrder,
    TResult? Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
  }) {
    return createItem?.call(detail, establishmentUuid, product,
        choosesForAmount, oneSelections, multipleSelections);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(SummaryDto? summary)? updateCurrentSummary,
    TResult Function(String urlId)? clearCart,
    TResult Function(String? urlId)? loadCart,
    TResult Function(ShoppingCartDto shoppingCartDto)? updateCart,
    TResult Function(String name, String phone)? saveUser,
    TResult Function(String address)? createAddress,
    TResult Function(String nroOrder)? addOrder,
    TResult Function(String nroOrder)? removeOrder,
    TResult Function(
            DetailsProductState detail,
            String establishmentUuid,
            ProductDto product,
            List<ChooseForAmount> choosesForAmount,
            List<OneSelection> oneSelections,
            List<MultipleSelection> multipleSelections)?
        createItem,
    required TResult orElse(),
  }) {
    if (createItem != null) {
      return createItem(detail, establishmentUuid, product, choosesForAmount,
          oneSelections, multipleSelections);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_UpdateCurrentSummary value) updateCurrentSummary,
    required TResult Function(_ClearCart value) clearCart,
    required TResult Function(_LoadCart value) loadCart,
    required TResult Function(_UpdateCart value) updateCart,
    required TResult Function(_SaveUser value) saveUser,
    required TResult Function(_CreateAddress value) createAddress,
    required TResult Function(_AddOrder value) addOrder,
    required TResult Function(_RemoveOrder value) removeOrder,
    required TResult Function(_CreateItem value) createItem,
  }) {
    return createItem(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult? Function(_ClearCart value)? clearCart,
    TResult? Function(_LoadCart value)? loadCart,
    TResult? Function(_UpdateCart value)? updateCart,
    TResult? Function(_SaveUser value)? saveUser,
    TResult? Function(_CreateAddress value)? createAddress,
    TResult? Function(_AddOrder value)? addOrder,
    TResult? Function(_RemoveOrder value)? removeOrder,
    TResult? Function(_CreateItem value)? createItem,
  }) {
    return createItem?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_UpdateCurrentSummary value)? updateCurrentSummary,
    TResult Function(_ClearCart value)? clearCart,
    TResult Function(_LoadCart value)? loadCart,
    TResult Function(_UpdateCart value)? updateCart,
    TResult Function(_SaveUser value)? saveUser,
    TResult Function(_CreateAddress value)? createAddress,
    TResult Function(_AddOrder value)? addOrder,
    TResult Function(_RemoveOrder value)? removeOrder,
    TResult Function(_CreateItem value)? createItem,
    required TResult orElse(),
  }) {
    if (createItem != null) {
      return createItem(this);
    }
    return orElse();
  }
}

abstract class _CreateItem implements AppCacheEvent {
  const factory _CreateItem(final DetailsProductState detail,
          {required final String establishmentUuid,
          required final ProductDto product,
          required final List<ChooseForAmount> choosesForAmount,
          required final List<OneSelection> oneSelections,
          required final List<MultipleSelection> multipleSelections}) =
      _$_CreateItem;

  DetailsProductState get detail;
  String get establishmentUuid;
  ProductDto get product;
  List<ChooseForAmount> get choosesForAmount;
  List<OneSelection> get oneSelections;
  List<MultipleSelection> get multipleSelections;
  @JsonKey(ignore: true)
  _$$_CreateItemCopyWith<_$_CreateItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AppCacheState {
  UserDto get user => throw _privateConstructorUsedError;
  Option<SummaryDto> get summary => throw _privateConstructorUsedError;
  Map<String, ShoppingCartDto> get cartCache =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AppCacheStateCopyWith<AppCacheState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AppCacheStateCopyWith<$Res> {
  factory $AppCacheStateCopyWith(
          AppCacheState value, $Res Function(AppCacheState) then) =
      _$AppCacheStateCopyWithImpl<$Res, AppCacheState>;
  @useResult
  $Res call(
      {UserDto user,
      Option<SummaryDto> summary,
      Map<String, ShoppingCartDto> cartCache});

  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class _$AppCacheStateCopyWithImpl<$Res, $Val extends AppCacheState>
    implements $AppCacheStateCopyWith<$Res> {
  _$AppCacheStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? summary = null,
    Object? cartCache = null,
  }) {
    return _then(_value.copyWith(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Option<SummaryDto>,
      cartCache: null == cartCache
          ? _value.cartCache
          : cartCache // ignore: cast_nullable_to_non_nullable
              as Map<String, ShoppingCartDto>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserDtoCopyWith<$Res> get user {
    return $UserDtoCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AppCacheStateCopyWith<$Res>
    implements $AppCacheStateCopyWith<$Res> {
  factory _$$_AppCacheStateCopyWith(
          _$_AppCacheState value, $Res Function(_$_AppCacheState) then) =
      __$$_AppCacheStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {UserDto user,
      Option<SummaryDto> summary,
      Map<String, ShoppingCartDto> cartCache});

  @override
  $UserDtoCopyWith<$Res> get user;
}

/// @nodoc
class __$$_AppCacheStateCopyWithImpl<$Res>
    extends _$AppCacheStateCopyWithImpl<$Res, _$_AppCacheState>
    implements _$$_AppCacheStateCopyWith<$Res> {
  __$$_AppCacheStateCopyWithImpl(
      _$_AppCacheState _value, $Res Function(_$_AppCacheState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
    Object? summary = null,
    Object? cartCache = null,
  }) {
    return _then(_$_AppCacheState(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as UserDto,
      summary: null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as Option<SummaryDto>,
      cartCache: null == cartCache
          ? _value._cartCache
          : cartCache // ignore: cast_nullable_to_non_nullable
              as Map<String, ShoppingCartDto>,
    ));
  }
}

/// @nodoc

class _$_AppCacheState extends _AppCacheState {
  const _$_AppCacheState(
      {required this.user,
      required this.summary,
      final Map<String, ShoppingCartDto> cartCache = const {}})
      : _cartCache = cartCache,
        super._();

  @override
  final UserDto user;
  @override
  final Option<SummaryDto> summary;
  final Map<String, ShoppingCartDto> _cartCache;
  @override
  @JsonKey()
  Map<String, ShoppingCartDto> get cartCache {
    if (_cartCache is EqualUnmodifiableMapView) return _cartCache;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_cartCache);
  }

  @override
  String toString() {
    return 'AppCacheState(user: $user, summary: $summary, cartCache: $cartCache)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AppCacheState &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.summary, summary) || other.summary == summary) &&
            const DeepCollectionEquality()
                .equals(other._cartCache, _cartCache));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user, summary,
      const DeepCollectionEquality().hash(_cartCache));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AppCacheStateCopyWith<_$_AppCacheState> get copyWith =>
      __$$_AppCacheStateCopyWithImpl<_$_AppCacheState>(this, _$identity);
}

abstract class _AppCacheState extends AppCacheState {
  const factory _AppCacheState(
      {required final UserDto user,
      required final Option<SummaryDto> summary,
      final Map<String, ShoppingCartDto> cartCache}) = _$_AppCacheState;
  const _AppCacheState._() : super._();

  @override
  UserDto get user;
  @override
  Option<SummaryDto> get summary;
  @override
  Map<String, ShoppingCartDto> get cartCache;
  @override
  @JsonKey(ignore: true)
  _$$_AppCacheStateCopyWith<_$_AppCacheState> get copyWith =>
      throw _privateConstructorUsedError;
}
