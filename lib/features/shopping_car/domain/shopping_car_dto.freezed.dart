// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shopping_car_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShopppingCarDto _$ShopppingCarDtoFromJson(Map<String, dynamic> json) {
  return _ShopppingCarDto.fromJson(json);
}

/// @nodoc
mixin _$ShopppingCarDto {
  String get uuid => throw _privateConstructorUsedError;
  List<ItemCar> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShopppingCarDtoCopyWith<ShopppingCarDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShopppingCarDtoCopyWith<$Res> {
  factory $ShopppingCarDtoCopyWith(
          ShopppingCarDto value, $Res Function(ShopppingCarDto) then) =
      _$ShopppingCarDtoCopyWithImpl<$Res, ShopppingCarDto>;
  @useResult
  $Res call({String uuid, List<ItemCar> items});
}

/// @nodoc
class _$ShopppingCarDtoCopyWithImpl<$Res, $Val extends ShopppingCarDto>
    implements $ShopppingCarDtoCopyWith<$Res> {
  _$ShopppingCarDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? items = null,
  }) {
    return _then(_value.copyWith(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value.items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemCar>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShopppingCarDtoCopyWith<$Res>
    implements $ShopppingCarDtoCopyWith<$Res> {
  factory _$$_ShopppingCarDtoCopyWith(
          _$_ShopppingCarDto value, $Res Function(_$_ShopppingCarDto) then) =
      __$$_ShopppingCarDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, List<ItemCar> items});
}

/// @nodoc
class __$$_ShopppingCarDtoCopyWithImpl<$Res>
    extends _$ShopppingCarDtoCopyWithImpl<$Res, _$_ShopppingCarDto>
    implements _$$_ShopppingCarDtoCopyWith<$Res> {
  __$$_ShopppingCarDtoCopyWithImpl(
      _$_ShopppingCarDto _value, $Res Function(_$_ShopppingCarDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? items = null,
  }) {
    return _then(_$_ShopppingCarDto(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemCar>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShopppingCarDto implements _ShopppingCarDto {
  _$_ShopppingCarDto({required this.uuid, final List<ItemCar> items = const []})
      : _items = items;

  factory _$_ShopppingCarDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShopppingCarDtoFromJson(json);

  @override
  final String uuid;
  final List<ItemCar> _items;
  @override
  @JsonKey()
  List<ItemCar> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ShopppingCarDto(uuid: $uuid, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShopppingCarDto &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, uuid, const DeepCollectionEquality().hash(_items));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ShopppingCarDtoCopyWith<_$_ShopppingCarDto> get copyWith =>
      __$$_ShopppingCarDtoCopyWithImpl<_$_ShopppingCarDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShopppingCarDtoToJson(
      this,
    );
  }
}

abstract class _ShopppingCarDto implements ShopppingCarDto {
  factory _ShopppingCarDto(
      {required final String uuid,
      final List<ItemCar> items}) = _$_ShopppingCarDto;

  factory _ShopppingCarDto.fromJson(Map<String, dynamic> json) =
      _$_ShopppingCarDto.fromJson;

  @override
  String get uuid;
  @override
  List<ItemCar> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ShopppingCarDtoCopyWith<_$_ShopppingCarDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemCar _$ItemCarFromJson(Map<String, dynamic> json) {
  return _ItemCar.fromJson(json);
}

/// @nodoc
mixin _$ItemCar {
  String get uuidProduct => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  List<String> get uuidsExtras => throw _privateConstructorUsedError;
  List<String> get uuidsOptionsFood => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCarCopyWith<ItemCar> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCarCopyWith<$Res> {
  factory $ItemCarCopyWith(ItemCar value, $Res Function(ItemCar) then) =
      _$ItemCarCopyWithImpl<$Res, ItemCar>;
  @useResult
  $Res call(
      {String uuidProduct,
      int amount,
      List<String> uuidsExtras,
      List<String> uuidsOptionsFood});
}

/// @nodoc
class _$ItemCarCopyWithImpl<$Res, $Val extends ItemCar>
    implements $ItemCarCopyWith<$Res> {
  _$ItemCarCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuidProduct = null,
    Object? amount = null,
    Object? uuidsExtras = null,
    Object? uuidsOptionsFood = null,
  }) {
    return _then(_value.copyWith(
      uuidProduct: null == uuidProduct
          ? _value.uuidProduct
          : uuidProduct // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      uuidsExtras: null == uuidsExtras
          ? _value.uuidsExtras
          : uuidsExtras // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uuidsOptionsFood: null == uuidsOptionsFood
          ? _value.uuidsOptionsFood
          : uuidsOptionsFood // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ItemCarCopyWith<$Res> implements $ItemCarCopyWith<$Res> {
  factory _$$_ItemCarCopyWith(
          _$_ItemCar value, $Res Function(_$_ItemCar) then) =
      __$$_ItemCarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uuidProduct,
      int amount,
      List<String> uuidsExtras,
      List<String> uuidsOptionsFood});
}

/// @nodoc
class __$$_ItemCarCopyWithImpl<$Res>
    extends _$ItemCarCopyWithImpl<$Res, _$_ItemCar>
    implements _$$_ItemCarCopyWith<$Res> {
  __$$_ItemCarCopyWithImpl(_$_ItemCar _value, $Res Function(_$_ItemCar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuidProduct = null,
    Object? amount = null,
    Object? uuidsExtras = null,
    Object? uuidsOptionsFood = null,
  }) {
    return _then(_$_ItemCar(
      uuidProduct: null == uuidProduct
          ? _value.uuidProduct
          : uuidProduct // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      uuidsExtras: null == uuidsExtras
          ? _value._uuidsExtras
          : uuidsExtras // ignore: cast_nullable_to_non_nullable
              as List<String>,
      uuidsOptionsFood: null == uuidsOptionsFood
          ? _value._uuidsOptionsFood
          : uuidsOptionsFood // ignore: cast_nullable_to_non_nullable
              as List<String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemCar implements _ItemCar {
  const _$_ItemCar(
      {required this.uuidProduct,
      required this.amount,
      final List<String> uuidsExtras = const [],
      final List<String> uuidsOptionsFood = const []})
      : _uuidsExtras = uuidsExtras,
        _uuidsOptionsFood = uuidsOptionsFood;

  factory _$_ItemCar.fromJson(Map<String, dynamic> json) =>
      _$$_ItemCarFromJson(json);

  @override
  final String uuidProduct;
  @override
  final int amount;
  final List<String> _uuidsExtras;
  @override
  @JsonKey()
  List<String> get uuidsExtras {
    if (_uuidsExtras is EqualUnmodifiableListView) return _uuidsExtras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uuidsExtras);
  }

  final List<String> _uuidsOptionsFood;
  @override
  @JsonKey()
  List<String> get uuidsOptionsFood {
    if (_uuidsOptionsFood is EqualUnmodifiableListView)
      return _uuidsOptionsFood;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_uuidsOptionsFood);
  }

  @override
  String toString() {
    return 'ItemCar(uuidProduct: $uuidProduct, amount: $amount, uuidsExtras: $uuidsExtras, uuidsOptionsFood: $uuidsOptionsFood)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemCar &&
            (identical(other.uuidProduct, uuidProduct) ||
                other.uuidProduct == uuidProduct) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            const DeepCollectionEquality()
                .equals(other._uuidsExtras, _uuidsExtras) &&
            const DeepCollectionEquality()
                .equals(other._uuidsOptionsFood, _uuidsOptionsFood));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      uuidProduct,
      amount,
      const DeepCollectionEquality().hash(_uuidsExtras),
      const DeepCollectionEquality().hash(_uuidsOptionsFood));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ItemCarCopyWith<_$_ItemCar> get copyWith =>
      __$$_ItemCarCopyWithImpl<_$_ItemCar>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ItemCarToJson(
      this,
    );
  }
}

abstract class _ItemCar implements ItemCar {
  const factory _ItemCar(
      {required final String uuidProduct,
      required final int amount,
      final List<String> uuidsExtras,
      final List<String> uuidsOptionsFood}) = _$_ItemCar;

  factory _ItemCar.fromJson(Map<String, dynamic> json) = _$_ItemCar.fromJson;

  @override
  String get uuidProduct;
  @override
  int get amount;
  @override
  List<String> get uuidsExtras;
  @override
  List<String> get uuidsOptionsFood;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCarCopyWith<_$_ItemCar> get copyWith =>
      throw _privateConstructorUsedError;
}
