// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_car_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ShoppingCartEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String uuid) addAmount,
    required TResult Function(String uuid) removeAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String uuid)? addAmount,
    TResult? Function(String uuid)? removeAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String uuid)? addAmount,
    TResult Function(String uuid)? removeAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddAmount value) addAmount,
    required TResult Function(_RemoveAmount value) removeAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddAmount value)? addAmount,
    TResult? Function(_RemoveAmount value)? removeAmount,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddAmount value)? addAmount,
    TResult Function(_RemoveAmount value)? removeAmount,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartEventCopyWith<$Res> {
  factory $ShoppingCartEventCopyWith(
          ShoppingCartEvent value, $Res Function(ShoppingCartEvent) then) =
      _$ShoppingCartEventCopyWithImpl<$Res, ShoppingCartEvent>;
}

/// @nodoc
class _$ShoppingCartEventCopyWithImpl<$Res, $Val extends ShoppingCartEvent>
    implements $ShoppingCartEventCopyWith<$Res> {
  _$ShoppingCartEventCopyWithImpl(this._value, this._then);

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
    extends _$ShoppingCartEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'ShoppingCartEvent.started()';
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
    required TResult Function(String uuid) addAmount,
    required TResult Function(String uuid) removeAmount,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String uuid)? addAmount,
    TResult? Function(String uuid)? removeAmount,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String uuid)? addAmount,
    TResult Function(String uuid)? removeAmount,
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
    required TResult Function(_AddAmount value) addAmount,
    required TResult Function(_RemoveAmount value) removeAmount,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddAmount value)? addAmount,
    TResult? Function(_RemoveAmount value)? removeAmount,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddAmount value)? addAmount,
    TResult Function(_RemoveAmount value)? removeAmount,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements ShoppingCartEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_AddAmountCopyWith<$Res> {
  factory _$$_AddAmountCopyWith(
          _$_AddAmount value, $Res Function(_$_AddAmount) then) =
      __$$_AddAmountCopyWithImpl<$Res>;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class __$$_AddAmountCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res, _$_AddAmount>
    implements _$$_AddAmountCopyWith<$Res> {
  __$$_AddAmountCopyWithImpl(
      _$_AddAmount _value, $Res Function(_$_AddAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$_AddAmount(
      null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AddAmount implements _AddAmount {
  const _$_AddAmount(this.uuid);

  @override
  final String uuid;

  @override
  String toString() {
    return 'ShoppingCartEvent.addAmount(uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AddAmount &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AddAmountCopyWith<_$_AddAmount> get copyWith =>
      __$$_AddAmountCopyWithImpl<_$_AddAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String uuid) addAmount,
    required TResult Function(String uuid) removeAmount,
  }) {
    return addAmount(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String uuid)? addAmount,
    TResult? Function(String uuid)? removeAmount,
  }) {
    return addAmount?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String uuid)? addAmount,
    TResult Function(String uuid)? removeAmount,
    required TResult orElse(),
  }) {
    if (addAmount != null) {
      return addAmount(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddAmount value) addAmount,
    required TResult Function(_RemoveAmount value) removeAmount,
  }) {
    return addAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddAmount value)? addAmount,
    TResult? Function(_RemoveAmount value)? removeAmount,
  }) {
    return addAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddAmount value)? addAmount,
    TResult Function(_RemoveAmount value)? removeAmount,
    required TResult orElse(),
  }) {
    if (addAmount != null) {
      return addAmount(this);
    }
    return orElse();
  }
}

abstract class _AddAmount implements ShoppingCartEvent {
  const factory _AddAmount(final String uuid) = _$_AddAmount;

  String get uuid;
  @JsonKey(ignore: true)
  _$$_AddAmountCopyWith<_$_AddAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveAmountCopyWith<$Res> {
  factory _$$_RemoveAmountCopyWith(
          _$_RemoveAmount value, $Res Function(_$_RemoveAmount) then) =
      __$$_RemoveAmountCopyWithImpl<$Res>;
  @useResult
  $Res call({String uuid});
}

/// @nodoc
class __$$_RemoveAmountCopyWithImpl<$Res>
    extends _$ShoppingCartEventCopyWithImpl<$Res, _$_RemoveAmount>
    implements _$$_RemoveAmountCopyWith<$Res> {
  __$$_RemoveAmountCopyWithImpl(
      _$_RemoveAmount _value, $Res Function(_$_RemoveAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
  }) {
    return _then(_$_RemoveAmount(
      null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_RemoveAmount implements _RemoveAmount {
  const _$_RemoveAmount(this.uuid);

  @override
  final String uuid;

  @override
  String toString() {
    return 'ShoppingCartEvent.removeAmount(uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RemoveAmount &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RemoveAmountCopyWith<_$_RemoveAmount> get copyWith =>
      __$$_RemoveAmountCopyWithImpl<_$_RemoveAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String uuid) addAmount,
    required TResult Function(String uuid) removeAmount,
  }) {
    return removeAmount(uuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String uuid)? addAmount,
    TResult? Function(String uuid)? removeAmount,
  }) {
    return removeAmount?.call(uuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String uuid)? addAmount,
    TResult Function(String uuid)? removeAmount,
    required TResult orElse(),
  }) {
    if (removeAmount != null) {
      return removeAmount(uuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_AddAmount value) addAmount,
    required TResult Function(_RemoveAmount value) removeAmount,
  }) {
    return removeAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_AddAmount value)? addAmount,
    TResult? Function(_RemoveAmount value)? removeAmount,
  }) {
    return removeAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_AddAmount value)? addAmount,
    TResult Function(_RemoveAmount value)? removeAmount,
    required TResult orElse(),
  }) {
    if (removeAmount != null) {
      return removeAmount(this);
    }
    return orElse();
  }
}

abstract class _RemoveAmount implements ShoppingCartEvent {
  const factory _RemoveAmount(final String uuid) = _$_RemoveAmount;

  String get uuid;
  @JsonKey(ignore: true)
  _$$_RemoveAmountCopyWith<_$_RemoveAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ShoppingCartState {
  ShoppingCartDto get shoppingCart => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ShoppingCartStateCopyWith<ShoppingCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartStateCopyWith<$Res> {
  factory $ShoppingCartStateCopyWith(
          ShoppingCartState value, $Res Function(ShoppingCartState) then) =
      _$ShoppingCartStateCopyWithImpl<$Res, ShoppingCartState>;
  @useResult
  $Res call({ShoppingCartDto shoppingCart});

  $ShoppingCartDtoCopyWith<$Res> get shoppingCart;
}

/// @nodoc
class _$ShoppingCartStateCopyWithImpl<$Res, $Val extends ShoppingCartState>
    implements $ShoppingCartStateCopyWith<$Res> {
  _$ShoppingCartStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoppingCart = null,
  }) {
    return _then(_value.copyWith(
      shoppingCart: null == shoppingCart
          ? _value.shoppingCart
          : shoppingCart // ignore: cast_nullable_to_non_nullable
              as ShoppingCartDto,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ShoppingCartDtoCopyWith<$Res> get shoppingCart {
    return $ShoppingCartDtoCopyWith<$Res>(_value.shoppingCart, (value) {
      return _then(_value.copyWith(shoppingCart: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ShoppingCartStateCopyWith<$Res>
    implements $ShoppingCartStateCopyWith<$Res> {
  factory _$$_ShoppingCartStateCopyWith(_$_ShoppingCartState value,
          $Res Function(_$_ShoppingCartState) then) =
      __$$_ShoppingCartStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ShoppingCartDto shoppingCart});

  @override
  $ShoppingCartDtoCopyWith<$Res> get shoppingCart;
}

/// @nodoc
class __$$_ShoppingCartStateCopyWithImpl<$Res>
    extends _$ShoppingCartStateCopyWithImpl<$Res, _$_ShoppingCartState>
    implements _$$_ShoppingCartStateCopyWith<$Res> {
  __$$_ShoppingCartStateCopyWithImpl(
      _$_ShoppingCartState _value, $Res Function(_$_ShoppingCartState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? shoppingCart = null,
  }) {
    return _then(_$_ShoppingCartState(
      shoppingCart: null == shoppingCart
          ? _value.shoppingCart
          : shoppingCart // ignore: cast_nullable_to_non_nullable
              as ShoppingCartDto,
    ));
  }
}

/// @nodoc

class _$_ShoppingCartState implements _ShoppingCartState {
  const _$_ShoppingCartState({required this.shoppingCart});

  @override
  final ShoppingCartDto shoppingCart;

  @override
  String toString() {
    return 'ShoppingCartState(shoppingCart: $shoppingCart)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCartState &&
            (identical(other.shoppingCart, shoppingCart) ||
                other.shoppingCart == shoppingCart));
  }

  @override
  int get hashCode => Object.hash(runtimeType, shoppingCart);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShoppingCartStateCopyWith<_$_ShoppingCartState> get copyWith =>
      __$$_ShoppingCartStateCopyWithImpl<_$_ShoppingCartState>(
          this, _$identity);
}

abstract class _ShoppingCartState implements ShoppingCartState {
  const factory _ShoppingCartState(
      {required final ShoppingCartDto shoppingCart}) = _$_ShoppingCartState;

  @override
  ShoppingCartDto get shoppingCart;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingCartStateCopyWith<_$_ShoppingCartState> get copyWith =>
      throw _privateConstructorUsedError;
}
