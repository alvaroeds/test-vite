// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'modifiers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Modifiers _$ModifiersFromJson(Map<String, dynamic> json) {
  return _Modifiers.fromJson(json);
}

/// @nodoc
mixin _$Modifiers {
  List<ChooseForAmount> get chooseForAmount =>
      throw _privateConstructorUsedError;
  List<OneSelection> get oneSelection => throw _privateConstructorUsedError;
  List<MultipleSelection> get multipleSelection =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ModifiersCopyWith<Modifiers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ModifiersCopyWith<$Res> {
  factory $ModifiersCopyWith(Modifiers value, $Res Function(Modifiers) then) =
      _$ModifiersCopyWithImpl<$Res, Modifiers>;
  @useResult
  $Res call(
      {List<ChooseForAmount> chooseForAmount,
      List<OneSelection> oneSelection,
      List<MultipleSelection> multipleSelection});
}

/// @nodoc
class _$ModifiersCopyWithImpl<$Res, $Val extends Modifiers>
    implements $ModifiersCopyWith<$Res> {
  _$ModifiersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chooseForAmount = null,
    Object? oneSelection = null,
    Object? multipleSelection = null,
  }) {
    return _then(_value.copyWith(
      chooseForAmount: null == chooseForAmount
          ? _value.chooseForAmount
          : chooseForAmount // ignore: cast_nullable_to_non_nullable
              as List<ChooseForAmount>,
      oneSelection: null == oneSelection
          ? _value.oneSelection
          : oneSelection // ignore: cast_nullable_to_non_nullable
              as List<OneSelection>,
      multipleSelection: null == multipleSelection
          ? _value.multipleSelection
          : multipleSelection // ignore: cast_nullable_to_non_nullable
              as List<MultipleSelection>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ModifiersCopyWith<$Res> implements $ModifiersCopyWith<$Res> {
  factory _$$_ModifiersCopyWith(
          _$_Modifiers value, $Res Function(_$_Modifiers) then) =
      __$$_ModifiersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<ChooseForAmount> chooseForAmount,
      List<OneSelection> oneSelection,
      List<MultipleSelection> multipleSelection});
}

/// @nodoc
class __$$_ModifiersCopyWithImpl<$Res>
    extends _$ModifiersCopyWithImpl<$Res, _$_Modifiers>
    implements _$$_ModifiersCopyWith<$Res> {
  __$$_ModifiersCopyWithImpl(
      _$_Modifiers _value, $Res Function(_$_Modifiers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? chooseForAmount = null,
    Object? oneSelection = null,
    Object? multipleSelection = null,
  }) {
    return _then(_$_Modifiers(
      chooseForAmount: null == chooseForAmount
          ? _value._chooseForAmount
          : chooseForAmount // ignore: cast_nullable_to_non_nullable
              as List<ChooseForAmount>,
      oneSelection: null == oneSelection
          ? _value._oneSelection
          : oneSelection // ignore: cast_nullable_to_non_nullable
              as List<OneSelection>,
      multipleSelection: null == multipleSelection
          ? _value._multipleSelection
          : multipleSelection // ignore: cast_nullable_to_non_nullable
              as List<MultipleSelection>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Modifiers implements _Modifiers {
  const _$_Modifiers(
      {final List<ChooseForAmount> chooseForAmount = const [],
      final List<OneSelection> oneSelection = const [],
      final List<MultipleSelection> multipleSelection = const []})
      : _chooseForAmount = chooseForAmount,
        _oneSelection = oneSelection,
        _multipleSelection = multipleSelection;

  factory _$_Modifiers.fromJson(Map<String, dynamic> json) =>
      _$$_ModifiersFromJson(json);

  final List<ChooseForAmount> _chooseForAmount;
  @override
  @JsonKey()
  List<ChooseForAmount> get chooseForAmount {
    if (_chooseForAmount is EqualUnmodifiableListView) return _chooseForAmount;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_chooseForAmount);
  }

  final List<OneSelection> _oneSelection;
  @override
  @JsonKey()
  List<OneSelection> get oneSelection {
    if (_oneSelection is EqualUnmodifiableListView) return _oneSelection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_oneSelection);
  }

  final List<MultipleSelection> _multipleSelection;
  @override
  @JsonKey()
  List<MultipleSelection> get multipleSelection {
    if (_multipleSelection is EqualUnmodifiableListView)
      return _multipleSelection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_multipleSelection);
  }

  @override
  String toString() {
    return 'Modifiers(chooseForAmount: $chooseForAmount, oneSelection: $oneSelection, multipleSelection: $multipleSelection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Modifiers &&
            const DeepCollectionEquality()
                .equals(other._chooseForAmount, _chooseForAmount) &&
            const DeepCollectionEquality()
                .equals(other._oneSelection, _oneSelection) &&
            const DeepCollectionEquality()
                .equals(other._multipleSelection, _multipleSelection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_chooseForAmount),
      const DeepCollectionEquality().hash(_oneSelection),
      const DeepCollectionEquality().hash(_multipleSelection));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ModifiersCopyWith<_$_Modifiers> get copyWith =>
      __$$_ModifiersCopyWithImpl<_$_Modifiers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ModifiersToJson(
      this,
    );
  }
}

abstract class _Modifiers implements Modifiers {
  const factory _Modifiers(
      {final List<ChooseForAmount> chooseForAmount,
      final List<OneSelection> oneSelection,
      final List<MultipleSelection> multipleSelection}) = _$_Modifiers;

  factory _Modifiers.fromJson(Map<String, dynamic> json) =
      _$_Modifiers.fromJson;

  @override
  List<ChooseForAmount> get chooseForAmount;
  @override
  List<OneSelection> get oneSelection;
  @override
  List<MultipleSelection> get multipleSelection;
  @override
  @JsonKey(ignore: true)
  _$$_ModifiersCopyWith<_$_Modifiers> get copyWith =>
      throw _privateConstructorUsedError;
}

ChooseForAmount _$ChooseForAmountFromJson(Map<String, dynamic> json) {
  return _ChooseForAmount.fromJson(json);
}

/// @nodoc
mixin _$ChooseForAmount {
  int get maximumQuantity => throw _privateConstructorUsedError;
  int get minimumQuantity => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  List<ExtraFood> get extras => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ChooseForAmountCopyWith<ChooseForAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChooseForAmountCopyWith<$Res> {
  factory $ChooseForAmountCopyWith(
          ChooseForAmount value, $Res Function(ChooseForAmount) then) =
      _$ChooseForAmountCopyWithImpl<$Res, ChooseForAmount>;
  @useResult
  $Res call(
      {int maximumQuantity,
      int minimumQuantity,
      String uuid,
      String name,
      List<ExtraFood> extras});
}

/// @nodoc
class _$ChooseForAmountCopyWithImpl<$Res, $Val extends ChooseForAmount>
    implements $ChooseForAmountCopyWith<$Res> {
  _$ChooseForAmountCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximumQuantity = null,
    Object? minimumQuantity = null,
    Object? uuid = null,
    Object? name = null,
    Object? extras = null,
  }) {
    return _then(_value.copyWith(
      maximumQuantity: null == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      minimumQuantity: null == minimumQuantity
          ? _value.minimumQuantity
          : minimumQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      extras: null == extras
          ? _value.extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<ExtraFood>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ChooseForAmountCopyWith<$Res>
    implements $ChooseForAmountCopyWith<$Res> {
  factory _$$_ChooseForAmountCopyWith(
          _$_ChooseForAmount value, $Res Function(_$_ChooseForAmount) then) =
      __$$_ChooseForAmountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int maximumQuantity,
      int minimumQuantity,
      String uuid,
      String name,
      List<ExtraFood> extras});
}

/// @nodoc
class __$$_ChooseForAmountCopyWithImpl<$Res>
    extends _$ChooseForAmountCopyWithImpl<$Res, _$_ChooseForAmount>
    implements _$$_ChooseForAmountCopyWith<$Res> {
  __$$_ChooseForAmountCopyWithImpl(
      _$_ChooseForAmount _value, $Res Function(_$_ChooseForAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximumQuantity = null,
    Object? minimumQuantity = null,
    Object? uuid = null,
    Object? name = null,
    Object? extras = null,
  }) {
    return _then(_$_ChooseForAmount(
      maximumQuantity: null == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      minimumQuantity: null == minimumQuantity
          ? _value.minimumQuantity
          : minimumQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      extras: null == extras
          ? _value._extras
          : extras // ignore: cast_nullable_to_non_nullable
              as List<ExtraFood>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChooseForAmount extends _ChooseForAmount {
  const _$_ChooseForAmount(
      {required this.maximumQuantity,
      this.minimumQuantity = 0,
      this.uuid = '',
      this.name = 'Elige tu extra',
      final List<ExtraFood> extras = const []})
      : _extras = extras,
        super._();

  factory _$_ChooseForAmount.fromJson(Map<String, dynamic> json) =>
      _$$_ChooseForAmountFromJson(json);

  @override
  final int maximumQuantity;
  @override
  @JsonKey()
  final int minimumQuantity;
  @override
  @JsonKey()
  final String uuid;
  @override
  @JsonKey()
  final String name;
  final List<ExtraFood> _extras;
  @override
  @JsonKey()
  List<ExtraFood> get extras {
    if (_extras is EqualUnmodifiableListView) return _extras;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_extras);
  }

  @override
  String toString() {
    return 'ChooseForAmount(maximumQuantity: $maximumQuantity, minimumQuantity: $minimumQuantity, uuid: $uuid, name: $name, extras: $extras)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChooseForAmount &&
            (identical(other.maximumQuantity, maximumQuantity) ||
                other.maximumQuantity == maximumQuantity) &&
            (identical(other.minimumQuantity, minimumQuantity) ||
                other.minimumQuantity == minimumQuantity) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other._extras, _extras));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maximumQuantity, minimumQuantity,
      uuid, name, const DeepCollectionEquality().hash(_extras));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChooseForAmountCopyWith<_$_ChooseForAmount> get copyWith =>
      __$$_ChooseForAmountCopyWithImpl<_$_ChooseForAmount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChooseForAmountToJson(
      this,
    );
  }
}

abstract class _ChooseForAmount extends ChooseForAmount {
  const factory _ChooseForAmount(
      {required final int maximumQuantity,
      final int minimumQuantity,
      final String uuid,
      final String name,
      final List<ExtraFood> extras}) = _$_ChooseForAmount;
  const _ChooseForAmount._() : super._();

  factory _ChooseForAmount.fromJson(Map<String, dynamic> json) =
      _$_ChooseForAmount.fromJson;

  @override
  int get maximumQuantity;
  @override
  int get minimumQuantity;
  @override
  String get uuid;
  @override
  String get name;
  @override
  List<ExtraFood> get extras;
  @override
  @JsonKey(ignore: true)
  _$$_ChooseForAmountCopyWith<_$_ChooseForAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

ExtraFood _$ExtraFoodFromJson(Map<String, dynamic> json) {
  return _ExtraFood.fromJson(json);
}

/// @nodoc
mixin _$ExtraFood {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExtraFoodCopyWith<ExtraFood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExtraFoodCopyWith<$Res> {
  factory $ExtraFoodCopyWith(ExtraFood value, $Res Function(ExtraFood) then) =
      _$ExtraFoodCopyWithImpl<$Res, ExtraFood>;
  @useResult
  $Res call({String name, double price, int limit, String uuid});
}

/// @nodoc
class _$ExtraFoodCopyWithImpl<$Res, $Val extends ExtraFood>
    implements $ExtraFoodCopyWith<$Res> {
  _$ExtraFoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? limit = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ExtraFoodCopyWith<$Res> implements $ExtraFoodCopyWith<$Res> {
  factory _$$_ExtraFoodCopyWith(
          _$_ExtraFood value, $Res Function(_$_ExtraFood) then) =
      __$$_ExtraFoodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double price, int limit, String uuid});
}

/// @nodoc
class __$$_ExtraFoodCopyWithImpl<$Res>
    extends _$ExtraFoodCopyWithImpl<$Res, _$_ExtraFood>
    implements _$$_ExtraFoodCopyWith<$Res> {
  __$$_ExtraFoodCopyWithImpl(
      _$_ExtraFood _value, $Res Function(_$_ExtraFood) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? limit = null,
    Object? uuid = null,
  }) {
    return _then(_$_ExtraFood(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExtraFood implements _ExtraFood {
  const _$_ExtraFood(
      {required this.name,
      required this.price,
      required this.limit,
      this.uuid = ''});

  factory _$_ExtraFood.fromJson(Map<String, dynamic> json) =>
      _$$_ExtraFoodFromJson(json);

  @override
  final String name;
  @override
  final double price;
  @override
  final int limit;
  @override
  @JsonKey()
  final String uuid;

  @override
  String toString() {
    return 'ExtraFood(name: $name, price: $price, limit: $limit, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExtraFood &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.limit, limit) || other.limit == limit) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, limit, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExtraFoodCopyWith<_$_ExtraFood> get copyWith =>
      __$$_ExtraFoodCopyWithImpl<_$_ExtraFood>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExtraFoodToJson(
      this,
    );
  }
}

abstract class _ExtraFood implements ExtraFood {
  const factory _ExtraFood(
      {required final String name,
      required final double price,
      required final int limit,
      final String uuid}) = _$_ExtraFood;

  factory _ExtraFood.fromJson(Map<String, dynamic> json) =
      _$_ExtraFood.fromJson;

  @override
  String get name;
  @override
  double get price;
  @override
  int get limit;
  @override
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$_ExtraFoodCopyWith<_$_ExtraFood> get copyWith =>
      throw _privateConstructorUsedError;
}

OneSelection _$OneSelectionFromJson(Map<String, dynamic> json) {
  return _OneSelection.fromJson(json);
}

/// @nodoc
mixin _$OneSelection {
  bool get isRequired => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  List<OptionFood> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OneSelectionCopyWith<OneSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OneSelectionCopyWith<$Res> {
  factory $OneSelectionCopyWith(
          OneSelection value, $Res Function(OneSelection) then) =
      _$OneSelectionCopyWithImpl<$Res, OneSelection>;
  @useResult
  $Res call(
      {bool isRequired, String name, String uuid, List<OptionFood> options});
}

/// @nodoc
class _$OneSelectionCopyWithImpl<$Res, $Val extends OneSelection>
    implements $OneSelectionCopyWith<$Res> {
  _$OneSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRequired = null,
    Object? name = null,
    Object? uuid = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionFood>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OneSelectionCopyWith<$Res>
    implements $OneSelectionCopyWith<$Res> {
  factory _$$_OneSelectionCopyWith(
          _$_OneSelection value, $Res Function(_$_OneSelection) then) =
      __$$_OneSelectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isRequired, String name, String uuid, List<OptionFood> options});
}

/// @nodoc
class __$$_OneSelectionCopyWithImpl<$Res>
    extends _$OneSelectionCopyWithImpl<$Res, _$_OneSelection>
    implements _$$_OneSelectionCopyWith<$Res> {
  __$$_OneSelectionCopyWithImpl(
      _$_OneSelection _value, $Res Function(_$_OneSelection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isRequired = null,
    Object? name = null,
    Object? uuid = null,
    Object? options = null,
  }) {
    return _then(_$_OneSelection(
      isRequired: null == isRequired
          ? _value.isRequired
          : isRequired // ignore: cast_nullable_to_non_nullable
              as bool,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionFood>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OneSelection extends _OneSelection {
  const _$_OneSelection(
      {required this.isRequired,
      required this.name,
      this.uuid = '',
      final List<OptionFood> options = const []})
      : _options = options,
        super._();

  factory _$_OneSelection.fromJson(Map<String, dynamic> json) =>
      _$$_OneSelectionFromJson(json);

  @override
  final bool isRequired;
  @override
  final String name;
  @override
  @JsonKey()
  final String uuid;
  final List<OptionFood> _options;
  @override
  @JsonKey()
  List<OptionFood> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'OneSelection(isRequired: $isRequired, name: $name, uuid: $uuid, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OneSelection &&
            (identical(other.isRequired, isRequired) ||
                other.isRequired == isRequired) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, isRequired, name, uuid,
      const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OneSelectionCopyWith<_$_OneSelection> get copyWith =>
      __$$_OneSelectionCopyWithImpl<_$_OneSelection>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OneSelectionToJson(
      this,
    );
  }
}

abstract class _OneSelection extends OneSelection {
  const factory _OneSelection(
      {required final bool isRequired,
      required final String name,
      final String uuid,
      final List<OptionFood> options}) = _$_OneSelection;
  const _OneSelection._() : super._();

  factory _OneSelection.fromJson(Map<String, dynamic> json) =
      _$_OneSelection.fromJson;

  @override
  bool get isRequired;
  @override
  String get name;
  @override
  String get uuid;
  @override
  List<OptionFood> get options;
  @override
  @JsonKey(ignore: true)
  _$$_OneSelectionCopyWith<_$_OneSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

OptionFood _$OptionFoodFromJson(Map<String, dynamic> json) {
  return _OptionFood.fromJson(json);
}

/// @nodoc
mixin _$OptionFood {
  String get name => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OptionFoodCopyWith<OptionFood> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OptionFoodCopyWith<$Res> {
  factory $OptionFoodCopyWith(
          OptionFood value, $Res Function(OptionFood) then) =
      _$OptionFoodCopyWithImpl<$Res, OptionFood>;
  @useResult
  $Res call({String name, double price, String uuid});
}

/// @nodoc
class _$OptionFoodCopyWithImpl<$Res, $Val extends OptionFood>
    implements $OptionFoodCopyWith<$Res> {
  _$OptionFoodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? uuid = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OptionFoodCopyWith<$Res>
    implements $OptionFoodCopyWith<$Res> {
  factory _$$_OptionFoodCopyWith(
          _$_OptionFood value, $Res Function(_$_OptionFood) then) =
      __$$_OptionFoodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, double price, String uuid});
}

/// @nodoc
class __$$_OptionFoodCopyWithImpl<$Res>
    extends _$OptionFoodCopyWithImpl<$Res, _$_OptionFood>
    implements _$$_OptionFoodCopyWith<$Res> {
  __$$_OptionFoodCopyWithImpl(
      _$_OptionFood _value, $Res Function(_$_OptionFood) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? price = null,
    Object? uuid = null,
  }) {
    return _then(_$_OptionFood(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OptionFood implements _OptionFood {
  const _$_OptionFood(
      {required this.name, required this.price, this.uuid = ''});

  factory _$_OptionFood.fromJson(Map<String, dynamic> json) =>
      _$$_OptionFoodFromJson(json);

  @override
  final String name;
  @override
  final double price;
  @override
  @JsonKey()
  final String uuid;

  @override
  String toString() {
    return 'OptionFood(name: $name, price: $price, uuid: $uuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OptionFood &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.uuid, uuid) || other.uuid == uuid));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, price, uuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OptionFoodCopyWith<_$_OptionFood> get copyWith =>
      __$$_OptionFoodCopyWithImpl<_$_OptionFood>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OptionFoodToJson(
      this,
    );
  }
}

abstract class _OptionFood implements OptionFood {
  const factory _OptionFood(
      {required final String name,
      required final double price,
      final String uuid}) = _$_OptionFood;

  factory _OptionFood.fromJson(Map<String, dynamic> json) =
      _$_OptionFood.fromJson;

  @override
  String get name;
  @override
  double get price;
  @override
  String get uuid;
  @override
  @JsonKey(ignore: true)
  _$$_OptionFoodCopyWith<_$_OptionFood> get copyWith =>
      throw _privateConstructorUsedError;
}

MultipleSelection _$MultipleSelectionFromJson(Map<String, dynamic> json) {
  return _MultipleSelection.fromJson(json);
}

/// @nodoc
mixin _$MultipleSelection {
  String get name => throw _privateConstructorUsedError;
  int get maximumLimit => throw _privateConstructorUsedError;
  int get minimumLimit => throw _privateConstructorUsedError;
  String get uuid => throw _privateConstructorUsedError;
  List<OptionFood> get options => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MultipleSelectionCopyWith<MultipleSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MultipleSelectionCopyWith<$Res> {
  factory $MultipleSelectionCopyWith(
          MultipleSelection value, $Res Function(MultipleSelection) then) =
      _$MultipleSelectionCopyWithImpl<$Res, MultipleSelection>;
  @useResult
  $Res call(
      {String name,
      int maximumLimit,
      int minimumLimit,
      String uuid,
      List<OptionFood> options});
}

/// @nodoc
class _$MultipleSelectionCopyWithImpl<$Res, $Val extends MultipleSelection>
    implements $MultipleSelectionCopyWith<$Res> {
  _$MultipleSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? maximumLimit = null,
    Object? minimumLimit = null,
    Object? uuid = null,
    Object? options = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      maximumLimit: null == maximumLimit
          ? _value.maximumLimit
          : maximumLimit // ignore: cast_nullable_to_non_nullable
              as int,
      minimumLimit: null == minimumLimit
          ? _value.minimumLimit
          : minimumLimit // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value.options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionFood>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MultipleSelectionCopyWith<$Res>
    implements $MultipleSelectionCopyWith<$Res> {
  factory _$$_MultipleSelectionCopyWith(_$_MultipleSelection value,
          $Res Function(_$_MultipleSelection) then) =
      __$$_MultipleSelectionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int maximumLimit,
      int minimumLimit,
      String uuid,
      List<OptionFood> options});
}

/// @nodoc
class __$$_MultipleSelectionCopyWithImpl<$Res>
    extends _$MultipleSelectionCopyWithImpl<$Res, _$_MultipleSelection>
    implements _$$_MultipleSelectionCopyWith<$Res> {
  __$$_MultipleSelectionCopyWithImpl(
      _$_MultipleSelection _value, $Res Function(_$_MultipleSelection) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? maximumLimit = null,
    Object? minimumLimit = null,
    Object? uuid = null,
    Object? options = null,
  }) {
    return _then(_$_MultipleSelection(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      maximumLimit: null == maximumLimit
          ? _value.maximumLimit
          : maximumLimit // ignore: cast_nullable_to_non_nullable
              as int,
      minimumLimit: null == minimumLimit
          ? _value.minimumLimit
          : minimumLimit // ignore: cast_nullable_to_non_nullable
              as int,
      uuid: null == uuid
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      options: null == options
          ? _value._options
          : options // ignore: cast_nullable_to_non_nullable
              as List<OptionFood>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MultipleSelection extends _MultipleSelection {
  const _$_MultipleSelection(
      {required this.name,
      required this.maximumLimit,
      this.minimumLimit = 0,
      this.uuid = '',
      final List<OptionFood> options = const []})
      : _options = options,
        super._();

  factory _$_MultipleSelection.fromJson(Map<String, dynamic> json) =>
      _$$_MultipleSelectionFromJson(json);

  @override
  final String name;
  @override
  final int maximumLimit;
  @override
  @JsonKey()
  final int minimumLimit;
  @override
  @JsonKey()
  final String uuid;
  final List<OptionFood> _options;
  @override
  @JsonKey()
  List<OptionFood> get options {
    if (_options is EqualUnmodifiableListView) return _options;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_options);
  }

  @override
  String toString() {
    return 'MultipleSelection(name: $name, maximumLimit: $maximumLimit, minimumLimit: $minimumLimit, uuid: $uuid, options: $options)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MultipleSelection &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.maximumLimit, maximumLimit) ||
                other.maximumLimit == maximumLimit) &&
            (identical(other.minimumLimit, minimumLimit) ||
                other.minimumLimit == minimumLimit) &&
            (identical(other.uuid, uuid) || other.uuid == uuid) &&
            const DeepCollectionEquality().equals(other._options, _options));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, maximumLimit, minimumLimit,
      uuid, const DeepCollectionEquality().hash(_options));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MultipleSelectionCopyWith<_$_MultipleSelection> get copyWith =>
      __$$_MultipleSelectionCopyWithImpl<_$_MultipleSelection>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MultipleSelectionToJson(
      this,
    );
  }
}

abstract class _MultipleSelection extends MultipleSelection {
  const factory _MultipleSelection(
      {required final String name,
      required final int maximumLimit,
      final int minimumLimit,
      final String uuid,
      final List<OptionFood> options}) = _$_MultipleSelection;
  const _MultipleSelection._() : super._();

  factory _MultipleSelection.fromJson(Map<String, dynamic> json) =
      _$_MultipleSelection.fromJson;

  @override
  String get name;
  @override
  int get maximumLimit;
  @override
  int get minimumLimit;
  @override
  String get uuid;
  @override
  List<OptionFood> get options;
  @override
  @JsonKey(ignore: true)
  _$$_MultipleSelectionCopyWith<_$_MultipleSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$CaseMinMax {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() minDiferentToMax,
    required TResult Function() minEqualsToMax,
    required TResult Function() zeroToMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? minDiferentToMax,
    TResult? Function()? minEqualsToMax,
    TResult? Function()? zeroToMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? minDiferentToMax,
    TResult Function()? minEqualsToMax,
    TResult Function()? zeroToMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinDiferentToMax value) minDiferentToMax,
    required TResult Function(_MinEqualsToMax value) minEqualsToMax,
    required TResult Function(_ZeroToMax value) zeroToMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MinDiferentToMax value)? minDiferentToMax,
    TResult? Function(_MinEqualsToMax value)? minEqualsToMax,
    TResult? Function(_ZeroToMax value)? zeroToMax,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinDiferentToMax value)? minDiferentToMax,
    TResult Function(_MinEqualsToMax value)? minEqualsToMax,
    TResult Function(_ZeroToMax value)? zeroToMax,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CaseMinMaxCopyWith<$Res> {
  factory $CaseMinMaxCopyWith(
          CaseMinMax value, $Res Function(CaseMinMax) then) =
      _$CaseMinMaxCopyWithImpl<$Res, CaseMinMax>;
}

/// @nodoc
class _$CaseMinMaxCopyWithImpl<$Res, $Val extends CaseMinMax>
    implements $CaseMinMaxCopyWith<$Res> {
  _$CaseMinMaxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_MinDiferentToMaxCopyWith<$Res> {
  factory _$$_MinDiferentToMaxCopyWith(
          _$_MinDiferentToMax value, $Res Function(_$_MinDiferentToMax) then) =
      __$$_MinDiferentToMaxCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MinDiferentToMaxCopyWithImpl<$Res>
    extends _$CaseMinMaxCopyWithImpl<$Res, _$_MinDiferentToMax>
    implements _$$_MinDiferentToMaxCopyWith<$Res> {
  __$$_MinDiferentToMaxCopyWithImpl(
      _$_MinDiferentToMax _value, $Res Function(_$_MinDiferentToMax) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MinDiferentToMax implements _MinDiferentToMax {
  const _$_MinDiferentToMax();

  @override
  String toString() {
    return 'CaseMinMax.minDiferentToMax()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MinDiferentToMax);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() minDiferentToMax,
    required TResult Function() minEqualsToMax,
    required TResult Function() zeroToMax,
  }) {
    return minDiferentToMax();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? minDiferentToMax,
    TResult? Function()? minEqualsToMax,
    TResult? Function()? zeroToMax,
  }) {
    return minDiferentToMax?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? minDiferentToMax,
    TResult Function()? minEqualsToMax,
    TResult Function()? zeroToMax,
    required TResult orElse(),
  }) {
    if (minDiferentToMax != null) {
      return minDiferentToMax();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinDiferentToMax value) minDiferentToMax,
    required TResult Function(_MinEqualsToMax value) minEqualsToMax,
    required TResult Function(_ZeroToMax value) zeroToMax,
  }) {
    return minDiferentToMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MinDiferentToMax value)? minDiferentToMax,
    TResult? Function(_MinEqualsToMax value)? minEqualsToMax,
    TResult? Function(_ZeroToMax value)? zeroToMax,
  }) {
    return minDiferentToMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinDiferentToMax value)? minDiferentToMax,
    TResult Function(_MinEqualsToMax value)? minEqualsToMax,
    TResult Function(_ZeroToMax value)? zeroToMax,
    required TResult orElse(),
  }) {
    if (minDiferentToMax != null) {
      return minDiferentToMax(this);
    }
    return orElse();
  }
}

abstract class _MinDiferentToMax implements CaseMinMax {
  const factory _MinDiferentToMax() = _$_MinDiferentToMax;
}

/// @nodoc
abstract class _$$_MinEqualsToMaxCopyWith<$Res> {
  factory _$$_MinEqualsToMaxCopyWith(
          _$_MinEqualsToMax value, $Res Function(_$_MinEqualsToMax) then) =
      __$$_MinEqualsToMaxCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_MinEqualsToMaxCopyWithImpl<$Res>
    extends _$CaseMinMaxCopyWithImpl<$Res, _$_MinEqualsToMax>
    implements _$$_MinEqualsToMaxCopyWith<$Res> {
  __$$_MinEqualsToMaxCopyWithImpl(
      _$_MinEqualsToMax _value, $Res Function(_$_MinEqualsToMax) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_MinEqualsToMax implements _MinEqualsToMax {
  const _$_MinEqualsToMax();

  @override
  String toString() {
    return 'CaseMinMax.minEqualsToMax()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MinEqualsToMax);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() minDiferentToMax,
    required TResult Function() minEqualsToMax,
    required TResult Function() zeroToMax,
  }) {
    return minEqualsToMax();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? minDiferentToMax,
    TResult? Function()? minEqualsToMax,
    TResult? Function()? zeroToMax,
  }) {
    return minEqualsToMax?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? minDiferentToMax,
    TResult Function()? minEqualsToMax,
    TResult Function()? zeroToMax,
    required TResult orElse(),
  }) {
    if (minEqualsToMax != null) {
      return minEqualsToMax();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinDiferentToMax value) minDiferentToMax,
    required TResult Function(_MinEqualsToMax value) minEqualsToMax,
    required TResult Function(_ZeroToMax value) zeroToMax,
  }) {
    return minEqualsToMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MinDiferentToMax value)? minDiferentToMax,
    TResult? Function(_MinEqualsToMax value)? minEqualsToMax,
    TResult? Function(_ZeroToMax value)? zeroToMax,
  }) {
    return minEqualsToMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinDiferentToMax value)? minDiferentToMax,
    TResult Function(_MinEqualsToMax value)? minEqualsToMax,
    TResult Function(_ZeroToMax value)? zeroToMax,
    required TResult orElse(),
  }) {
    if (minEqualsToMax != null) {
      return minEqualsToMax(this);
    }
    return orElse();
  }
}

abstract class _MinEqualsToMax implements CaseMinMax {
  const factory _MinEqualsToMax() = _$_MinEqualsToMax;
}

/// @nodoc
abstract class _$$_ZeroToMaxCopyWith<$Res> {
  factory _$$_ZeroToMaxCopyWith(
          _$_ZeroToMax value, $Res Function(_$_ZeroToMax) then) =
      __$$_ZeroToMaxCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ZeroToMaxCopyWithImpl<$Res>
    extends _$CaseMinMaxCopyWithImpl<$Res, _$_ZeroToMax>
    implements _$$_ZeroToMaxCopyWith<$Res> {
  __$$_ZeroToMaxCopyWithImpl(
      _$_ZeroToMax _value, $Res Function(_$_ZeroToMax) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ZeroToMax implements _ZeroToMax {
  const _$_ZeroToMax();

  @override
  String toString() {
    return 'CaseMinMax.zeroToMax()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ZeroToMax);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() minDiferentToMax,
    required TResult Function() minEqualsToMax,
    required TResult Function() zeroToMax,
  }) {
    return zeroToMax();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? minDiferentToMax,
    TResult? Function()? minEqualsToMax,
    TResult? Function()? zeroToMax,
  }) {
    return zeroToMax?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? minDiferentToMax,
    TResult Function()? minEqualsToMax,
    TResult Function()? zeroToMax,
    required TResult orElse(),
  }) {
    if (zeroToMax != null) {
      return zeroToMax();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MinDiferentToMax value) minDiferentToMax,
    required TResult Function(_MinEqualsToMax value) minEqualsToMax,
    required TResult Function(_ZeroToMax value) zeroToMax,
  }) {
    return zeroToMax(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_MinDiferentToMax value)? minDiferentToMax,
    TResult? Function(_MinEqualsToMax value)? minEqualsToMax,
    TResult? Function(_ZeroToMax value)? zeroToMax,
  }) {
    return zeroToMax?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_MinDiferentToMax value)? minDiferentToMax,
    TResult Function(_MinEqualsToMax value)? minEqualsToMax,
    TResult Function(_ZeroToMax value)? zeroToMax,
    required TResult orElse(),
  }) {
    if (zeroToMax != null) {
      return zeroToMax(this);
    }
    return orElse();
  }
}

abstract class _ZeroToMax implements CaseMinMax {
  const factory _ZeroToMax() = _$_ZeroToMax;
}
