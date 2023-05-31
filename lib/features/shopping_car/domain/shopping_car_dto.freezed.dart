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

ShoppingCartDto _$ShoppingCartDtoFromJson(Map<String, dynamic> json) {
  return _ShoppingCartDto.fromJson(json);
}

/// @nodoc
mixin _$ShoppingCartDto {
  String get uuid => throw _privateConstructorUsedError;
  List<ItemCart> get items => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShoppingCartDtoCopyWith<ShoppingCartDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShoppingCartDtoCopyWith<$Res> {
  factory $ShoppingCartDtoCopyWith(
          ShoppingCartDto value, $Res Function(ShoppingCartDto) then) =
      _$ShoppingCartDtoCopyWithImpl<$Res, ShoppingCartDto>;
  @useResult
  $Res call({String uuid, List<ItemCart> items});
}

/// @nodoc
class _$ShoppingCartDtoCopyWithImpl<$Res, $Val extends ShoppingCartDto>
    implements $ShoppingCartDtoCopyWith<$Res> {
  _$ShoppingCartDtoCopyWithImpl(this._value, this._then);

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
              as List<ItemCart>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ShoppingCartDtoCopyWith<$Res>
    implements $ShoppingCartDtoCopyWith<$Res> {
  factory _$$_ShoppingCartDtoCopyWith(
          _$_ShoppingCartDto value, $Res Function(_$_ShoppingCartDto) then) =
      __$$_ShoppingCartDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String uuid, List<ItemCart> items});
}

/// @nodoc
class __$$_ShoppingCartDtoCopyWithImpl<$Res>
    extends _$ShoppingCartDtoCopyWithImpl<$Res, _$_ShoppingCartDto>
    implements _$$_ShoppingCartDtoCopyWith<$Res> {
  __$$_ShoppingCartDtoCopyWithImpl(
      _$_ShoppingCartDto _value, $Res Function(_$_ShoppingCartDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uuid = null,
    Object? items = null,
  }) {
    return _then(_$_ShoppingCartDto(
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      items: null == items
          ? _value._items
          : items // ignore: cast_nullable_to_non_nullable
              as List<ItemCart>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShoppingCartDto extends _ShoppingCartDto {
  _$_ShoppingCartDto(
      {required this.uuid, final List<ItemCart> items = const []})
      : _items = items,
        super._();

  factory _$_ShoppingCartDto.fromJson(Map<String, dynamic> json) =>
      _$$_ShoppingCartDtoFromJson(json);

  @override
  final String uuid;
  final List<ItemCart> _items;
  @override
  @JsonKey()
  List<ItemCart> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ShoppingCartDto(uuid: $uuid, items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShoppingCartDto &&
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
  _$$_ShoppingCartDtoCopyWith<_$_ShoppingCartDto> get copyWith =>
      __$$_ShoppingCartDtoCopyWithImpl<_$_ShoppingCartDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShoppingCartDtoToJson(
      this,
    );
  }
}

abstract class _ShoppingCartDto extends ShoppingCartDto {
  factory _ShoppingCartDto(
      {required final String uuid,
      final List<ItemCart> items}) = _$_ShoppingCartDto;
  _ShoppingCartDto._() : super._();

  factory _ShoppingCartDto.fromJson(Map<String, dynamic> json) =
      _$_ShoppingCartDto.fromJson;

  @override
  String get uuid;
  @override
  List<ItemCart> get items;
  @override
  @JsonKey(ignore: true)
  _$$_ShoppingCartDtoCopyWith<_$_ShoppingCartDto> get copyWith =>
      throw _privateConstructorUsedError;
}

ItemCart _$ItemCartFromJson(Map<String, dynamic> json) {
  return _ItemCar.fromJson(json);
}

/// @nodoc
mixin _$ItemCart {
  ProductDto get product => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  List<AmountExtraFood> get extrasFood => throw _privateConstructorUsedError;
  List<AmountOptionFood> get optionsFoodOneSelection =>
      throw _privateConstructorUsedError;
  List<AmountOptionFood> get optionsFoodForMultiple =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ItemCartCopyWith<ItemCart> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ItemCartCopyWith<$Res> {
  factory $ItemCartCopyWith(ItemCart value, $Res Function(ItemCart) then) =
      _$ItemCartCopyWithImpl<$Res, ItemCart>;
  @useResult
  $Res call(
      {ProductDto product,
      String uuid,
      int amount,
      String comment,
      List<AmountExtraFood> extrasFood,
      List<AmountOptionFood> optionsFoodOneSelection,
      List<AmountOptionFood> optionsFoodForMultiple});

  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class _$ItemCartCopyWithImpl<$Res, $Val extends ItemCart>
    implements $ItemCartCopyWith<$Res> {
  _$ItemCartCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? uuid = null,
    Object? amount = null,
    Object? comment = null,
    Object? extrasFood = null,
    Object? optionsFoodOneSelection = null,
    Object? optionsFoodForMultiple = null,
  }) {
    return _then(_value.copyWith(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      extrasFood: null == extrasFood
          ? _value.extrasFood
          : extrasFood // ignore: cast_nullable_to_non_nullable
              as List<AmountExtraFood>,
      optionsFoodOneSelection: null == optionsFoodOneSelection
          ? _value.optionsFoodOneSelection
          : optionsFoodOneSelection // ignore: cast_nullable_to_non_nullable
              as List<AmountOptionFood>,
      optionsFoodForMultiple: null == optionsFoodForMultiple
          ? _value.optionsFoodForMultiple
          : optionsFoodForMultiple // ignore: cast_nullable_to_non_nullable
              as List<AmountOptionFood>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProductDtoCopyWith<$Res> get product {
    return $ProductDtoCopyWith<$Res>(_value.product, (value) {
      return _then(_value.copyWith(product: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ItemCarCopyWith<$Res> implements $ItemCartCopyWith<$Res> {
  factory _$$_ItemCarCopyWith(
          _$_ItemCar value, $Res Function(_$_ItemCar) then) =
      __$$_ItemCarCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {ProductDto product,
      String uuid,
      int amount,
      String comment,
      List<AmountExtraFood> extrasFood,
      List<AmountOptionFood> optionsFoodOneSelection,
      List<AmountOptionFood> optionsFoodForMultiple});

  @override
  $ProductDtoCopyWith<$Res> get product;
}

/// @nodoc
class __$$_ItemCarCopyWithImpl<$Res>
    extends _$ItemCartCopyWithImpl<$Res, _$_ItemCar>
    implements _$$_ItemCarCopyWith<$Res> {
  __$$_ItemCarCopyWithImpl(_$_ItemCar _value, $Res Function(_$_ItemCar) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? product = null,
    Object? uuid = null,
    Object? amount = null,
    Object? comment = null,
    Object? extrasFood = null,
    Object? optionsFoodOneSelection = null,
    Object? optionsFoodForMultiple = null,
  }) {
    return _then(_$_ItemCar(
      product: null == product
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as ProductDto,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      extrasFood: null == extrasFood
          ? _value._extrasFood
          : extrasFood // ignore: cast_nullable_to_non_nullable
              as List<AmountExtraFood>,
      optionsFoodOneSelection: null == optionsFoodOneSelection
          ? _value._optionsFoodOneSelection
          : optionsFoodOneSelection // ignore: cast_nullable_to_non_nullable
              as List<AmountOptionFood>,
      optionsFoodForMultiple: null == optionsFoodForMultiple
          ? _value._optionsFoodForMultiple
          : optionsFoodForMultiple // ignore: cast_nullable_to_non_nullable
              as List<AmountOptionFood>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ItemCar extends _ItemCar {
  const _$_ItemCar(
      {required this.product,
      required this.uuid,
      required this.amount,
      this.comment = '',
      final List<AmountExtraFood> extrasFood = const [],
      final List<AmountOptionFood> optionsFoodOneSelection = const [],
      final List<AmountOptionFood> optionsFoodForMultiple = const []})
      : _extrasFood = extrasFood,
        _optionsFoodOneSelection = optionsFoodOneSelection,
        _optionsFoodForMultiple = optionsFoodForMultiple,
        super._();

  factory _$_ItemCar.fromJson(Map<String, dynamic> json) =>
      _$$_ItemCarFromJson(json);

  @override
  final ProductDto product;
  @override
  final String uuid;
  @override
  final int amount;
  @override
  @JsonKey()
  final String comment;
  final List<AmountExtraFood> _extrasFood;
  @override
  @JsonKey()
  List<AmountExtraFood> get extrasFood {
    if (_extrasFood is EqualUnmodifiableListView) return _extrasFood;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extrasFood);
  }

  final List<AmountOptionFood> _optionsFoodOneSelection;
  @override
  @JsonKey()
  List<AmountOptionFood> get optionsFoodOneSelection {
    if (_optionsFoodOneSelection is EqualUnmodifiableListView)
      return _optionsFoodOneSelection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionsFoodOneSelection);
  }

  final List<AmountOptionFood> _optionsFoodForMultiple;
  @override
  @JsonKey()
  List<AmountOptionFood> get optionsFoodForMultiple {
    if (_optionsFoodForMultiple is EqualUnmodifiableListView)
      return _optionsFoodForMultiple;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_optionsFoodForMultiple);
  }

  @override
  String toString() {
    return 'ItemCart(product: $product, uuid: $uuid, amount: $amount, comment: $comment, extrasFood: $extrasFood, optionsFoodOneSelection: $optionsFoodOneSelection, optionsFoodForMultiple: $optionsFoodForMultiple)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ItemCar &&
            (identical(other.product, product) || other.product == product) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality()
                .equals(other._extrasFood, _extrasFood) &&
            const DeepCollectionEquality().equals(
                other._optionsFoodOneSelection, _optionsFoodOneSelection) &&
            const DeepCollectionEquality().equals(
                other._optionsFoodForMultiple, _optionsFoodForMultiple));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      product,
      uuid,
      amount,
      comment,
      const DeepCollectionEquality().hash(_extrasFood),
      const DeepCollectionEquality().hash(_optionsFoodOneSelection),
      const DeepCollectionEquality().hash(_optionsFoodForMultiple));

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

abstract class _ItemCar extends ItemCart {
  const factory _ItemCar(
      {required final ProductDto product,
      required final String uuid,
      required final int amount,
      final String comment,
      final List<AmountExtraFood> extrasFood,
      final List<AmountOptionFood> optionsFoodOneSelection,
      final List<AmountOptionFood> optionsFoodForMultiple}) = _$_ItemCar;
  const _ItemCar._() : super._();

  factory _ItemCar.fromJson(Map<String, dynamic> json) = _$_ItemCar.fromJson;

  @override
  ProductDto get product;
  @override
  String get uuid;
  @override
  int get amount;
  @override
  String get comment;
  @override
  List<AmountExtraFood> get extrasFood;
  @override
  List<AmountOptionFood> get optionsFoodOneSelection;
  @override
  List<AmountOptionFood> get optionsFoodForMultiple;
  @override
  @JsonKey(ignore: true)
  _$$_ItemCarCopyWith<_$_ItemCar> get copyWith =>
      throw _privateConstructorUsedError;
}

AmountExtraFood _$AmountExtraFoodFromJson(Map<String, dynamic> json) {
  return _AmountExtraFood.fromJson(json);
}

/// @nodoc
mixin _$AmountExtraFood {
  ExtraFood get extraFood => throw _privateConstructorUsedError;
  String get uuidModifier => throw _privateConstructorUsedError;
  int get amount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmountExtraFoodCopyWith<AmountExtraFood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountExtraFoodCopyWith<$Res> {
  factory $AmountExtraFoodCopyWith(
          AmountExtraFood value, $Res Function(AmountExtraFood) then) =
      _$AmountExtraFoodCopyWithImpl<$Res, AmountExtraFood>;
  @useResult
  $Res call({ExtraFood extraFood, String uuidModifier, int amount});

  $ExtraFoodCopyWith<$Res> get extraFood;
}

/// @nodoc
class _$AmountExtraFoodCopyWithImpl<$Res, $Val extends AmountExtraFood>
    implements $AmountExtraFoodCopyWith<$Res> {
  _$AmountExtraFoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extraFood = null,
    Object? uuidModifier = null,
    Object? amount = null,
  }) {
    return _then(_value.copyWith(
      extraFood: null == extraFood
          ? _value.extraFood
          : extraFood // ignore: cast_nullable_to_non_nullable
              as ExtraFood,
      uuidModifier: null == uuidModifier
          ? _value.uuidModifier
          : uuidModifier // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtraFoodCopyWith<$Res> get extraFood {
    return $ExtraFoodCopyWith<$Res>(_value.extraFood, (value) {
      return _then(_value.copyWith(extraFood: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AmountExtraFoodCopyWith<$Res>
    implements $AmountExtraFoodCopyWith<$Res> {
  factory _$$_AmountExtraFoodCopyWith(
          _$_AmountExtraFood value, $Res Function(_$_AmountExtraFood) then) =
      __$$_AmountExtraFoodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ExtraFood extraFood, String uuidModifier, int amount});

  @override
  $ExtraFoodCopyWith<$Res> get extraFood;
}

/// @nodoc
class __$$_AmountExtraFoodCopyWithImpl<$Res>
    extends _$AmountExtraFoodCopyWithImpl<$Res, _$_AmountExtraFood>
    implements _$$_AmountExtraFoodCopyWith<$Res> {
  __$$_AmountExtraFoodCopyWithImpl(
      _$_AmountExtraFood _value, $Res Function(_$_AmountExtraFood) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extraFood = null,
    Object? uuidModifier = null,
    Object? amount = null,
  }) {
    return _then(_$_AmountExtraFood(
      extraFood: null == extraFood
          ? _value.extraFood
          : extraFood // ignore: cast_nullable_to_non_nullable
              as ExtraFood,
      uuidModifier: null == uuidModifier
          ? _value.uuidModifier
          : uuidModifier // ignore: cast_nullable_to_non_nullable
              as String,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AmountExtraFood extends _AmountExtraFood {
  const _$_AmountExtraFood(
      {required this.extraFood,
      required this.uuidModifier,
      required this.amount})
      : super._();

  factory _$_AmountExtraFood.fromJson(Map<String, dynamic> json) =>
      _$$_AmountExtraFoodFromJson(json);

  @override
  final ExtraFood extraFood;
  @override
  final String uuidModifier;
  @override
  final int amount;

  @override
  String toString() {
    return 'AmountExtraFood(extraFood: $extraFood, uuidModifier: $uuidModifier, amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmountExtraFood &&
            (identical(other.extraFood, extraFood) ||
                other.extraFood == extraFood) &&
            (identical(other.uuidModifier, uuidModifier) ||
                other.uuidModifier == uuidModifier) &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, extraFood, uuidModifier, amount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmountExtraFoodCopyWith<_$_AmountExtraFood> get copyWith =>
      __$$_AmountExtraFoodCopyWithImpl<_$_AmountExtraFood>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AmountExtraFoodToJson(
      this,
    );
  }
}

abstract class _AmountExtraFood extends AmountExtraFood {
  const factory _AmountExtraFood(
      {required final ExtraFood extraFood,
      required final String uuidModifier,
      required final int amount}) = _$_AmountExtraFood;
  const _AmountExtraFood._() : super._();

  factory _AmountExtraFood.fromJson(Map<String, dynamic> json) =
      _$_AmountExtraFood.fromJson;

  @override
  ExtraFood get extraFood;
  @override
  String get uuidModifier;
  @override
  int get amount;
  @override
  @JsonKey(ignore: true)
  _$$_AmountExtraFoodCopyWith<_$_AmountExtraFood> get copyWith =>
      throw _privateConstructorUsedError;
}

AmountOptionFood _$AmountOptionFoodFromJson(Map<String, dynamic> json) {
  return _AmountOptionFood.fromJson(json);
}

/// @nodoc
mixin _$AmountOptionFood {
  OptionFood get optionFood => throw _privateConstructorUsedError;
  String get uuidModifier => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AmountOptionFoodCopyWith<AmountOptionFood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AmountOptionFoodCopyWith<$Res> {
  factory $AmountOptionFoodCopyWith(
          AmountOptionFood value, $Res Function(AmountOptionFood) then) =
      _$AmountOptionFoodCopyWithImpl<$Res, AmountOptionFood>;
  @useResult
  $Res call({OptionFood optionFood, String uuidModifier});

  $OptionFoodCopyWith<$Res> get optionFood;
}

/// @nodoc
class _$AmountOptionFoodCopyWithImpl<$Res, $Val extends AmountOptionFood>
    implements $AmountOptionFoodCopyWith<$Res> {
  _$AmountOptionFoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionFood = null,
    Object? uuidModifier = null,
  }) {
    return _then(_value.copyWith(
      optionFood: null == optionFood
          ? _value.optionFood
          : optionFood // ignore: cast_nullable_to_non_nullable
              as OptionFood,
      uuidModifier: null == uuidModifier
          ? _value.uuidModifier
          : uuidModifier // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $OptionFoodCopyWith<$Res> get optionFood {
    return $OptionFoodCopyWith<$Res>(_value.optionFood, (value) {
      return _then(_value.copyWith(optionFood: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AmountOptionFoodCopyWith<$Res>
    implements $AmountOptionFoodCopyWith<$Res> {
  factory _$$_AmountOptionFoodCopyWith(
          _$_AmountOptionFood value, $Res Function(_$_AmountOptionFood) then) =
      __$$_AmountOptionFoodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({OptionFood optionFood, String uuidModifier});

  @override
  $OptionFoodCopyWith<$Res> get optionFood;
}

/// @nodoc
class __$$_AmountOptionFoodCopyWithImpl<$Res>
    extends _$AmountOptionFoodCopyWithImpl<$Res, _$_AmountOptionFood>
    implements _$$_AmountOptionFoodCopyWith<$Res> {
  __$$_AmountOptionFoodCopyWithImpl(
      _$_AmountOptionFood _value, $Res Function(_$_AmountOptionFood) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? optionFood = null,
    Object? uuidModifier = null,
  }) {
    return _then(_$_AmountOptionFood(
      optionFood: null == optionFood
          ? _value.optionFood
          : optionFood // ignore: cast_nullable_to_non_nullable
              as OptionFood,
      uuidModifier: null == uuidModifier
          ? _value.uuidModifier
          : uuidModifier // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AmountOptionFood extends _AmountOptionFood {
  const _$_AmountOptionFood(
      {required this.optionFood, required this.uuidModifier})
      : super._();

  factory _$_AmountOptionFood.fromJson(Map<String, dynamic> json) =>
      _$$_AmountOptionFoodFromJson(json);

  @override
  final OptionFood optionFood;
  @override
  final String uuidModifier;

  @override
  String toString() {
    return 'AmountOptionFood(optionFood: $optionFood, uuidModifier: $uuidModifier)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AmountOptionFood &&
            (identical(other.optionFood, optionFood) ||
                other.optionFood == optionFood) &&
            (identical(other.uuidModifier, uuidModifier) ||
                other.uuidModifier == uuidModifier));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, optionFood, uuidModifier);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AmountOptionFoodCopyWith<_$_AmountOptionFood> get copyWith =>
      __$$_AmountOptionFoodCopyWithImpl<_$_AmountOptionFood>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AmountOptionFoodToJson(
      this,
    );
  }
}

abstract class _AmountOptionFood extends AmountOptionFood {
  const factory _AmountOptionFood(
      {required final OptionFood optionFood,
      required final String uuidModifier}) = _$_AmountOptionFood;
  const _AmountOptionFood._() : super._();

  factory _AmountOptionFood.fromJson(Map<String, dynamic> json) =
      _$_AmountOptionFood.fromJson;

  @override
  OptionFood get optionFood;
  @override
  String get uuidModifier;
  @override
  @JsonKey(ignore: true)
  _$$_AmountOptionFoodCopyWith<_$_AmountOptionFood> get copyWith =>
      throw _privateConstructorUsedError;
}
