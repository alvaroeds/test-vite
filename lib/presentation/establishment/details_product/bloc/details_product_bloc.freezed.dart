// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'details_product_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DetailsProductEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExtraFood extra, int maximumQuantity)
        increaseAmount,
    required TResult Function(ExtraFood extra) decreaseAmount,
    required TResult Function(String modifierUuid, String optionUuid)
        selectOneOption,
    required TResult Function(MultipleSelection modifier, String optionUuid)
        selectOption,
    required TResult Function(String comment) changeComment,
    required TResult Function() increaseProductQuantity,
    required TResult Function() decreaseProductQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult? Function(ExtraFood extra)? decreaseAmount,
    TResult? Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult? Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult? Function(String comment)? changeComment,
    TResult? Function()? increaseProductQuantity,
    TResult? Function()? decreaseProductQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult Function(ExtraFood extra)? decreaseAmount,
    TResult Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult Function(String comment)? changeComment,
    TResult Function()? increaseProductQuantity,
    TResult Function()? decreaseProductQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncreaseAmount value) increaseAmount,
    required TResult Function(_DecreaseAmount value) decreaseAmount,
    required TResult Function(_SelectOneOption value) selectOneOption,
    required TResult Function(_SelectOption value) selectOption,
    required TResult Function(_ChangeComment value) changeComment,
    required TResult Function(_IncreaseProductQuantity value)
        increaseProductQuantity,
    required TResult Function(_DecreaseProductQuantity value)
        decreaseProductQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncreaseAmount value)? increaseAmount,
    TResult? Function(_DecreaseAmount value)? decreaseAmount,
    TResult? Function(_SelectOneOption value)? selectOneOption,
    TResult? Function(_SelectOption value)? selectOption,
    TResult? Function(_ChangeComment value)? changeComment,
    TResult? Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult? Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncreaseAmount value)? increaseAmount,
    TResult Function(_DecreaseAmount value)? decreaseAmount,
    TResult Function(_SelectOneOption value)? selectOneOption,
    TResult Function(_SelectOption value)? selectOption,
    TResult Function(_ChangeComment value)? changeComment,
    TResult Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsProductEventCopyWith<$Res> {
  factory $DetailsProductEventCopyWith(
          DetailsProductEvent value, $Res Function(DetailsProductEvent) then) =
      _$DetailsProductEventCopyWithImpl<$Res, DetailsProductEvent>;
}

/// @nodoc
class _$DetailsProductEventCopyWithImpl<$Res, $Val extends DetailsProductEvent>
    implements $DetailsProductEventCopyWith<$Res> {
  _$DetailsProductEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_IncreaseAmountCopyWith<$Res> {
  factory _$$_IncreaseAmountCopyWith(
          _$_IncreaseAmount value, $Res Function(_$_IncreaseAmount) then) =
      __$$_IncreaseAmountCopyWithImpl<$Res>;
  @useResult
  $Res call({ExtraFood extra, int maximumQuantity});

  $ExtraFoodCopyWith<$Res> get extra;
}

/// @nodoc
class __$$_IncreaseAmountCopyWithImpl<$Res>
    extends _$DetailsProductEventCopyWithImpl<$Res, _$_IncreaseAmount>
    implements _$$_IncreaseAmountCopyWith<$Res> {
  __$$_IncreaseAmountCopyWithImpl(
      _$_IncreaseAmount _value, $Res Function(_$_IncreaseAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extra = null,
    Object? maximumQuantity = null,
  }) {
    return _then(_$_IncreaseAmount(
      null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as ExtraFood,
      null == maximumQuantity
          ? _value.maximumQuantity
          : maximumQuantity // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtraFoodCopyWith<$Res> get extra {
    return $ExtraFoodCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value));
    });
  }
}

/// @nodoc

class _$_IncreaseAmount implements _IncreaseAmount {
  const _$_IncreaseAmount(this.extra, this.maximumQuantity);

  @override
  final ExtraFood extra;
  @override
  final int maximumQuantity;

  @override
  String toString() {
    return 'DetailsProductEvent.increaseAmount(extra: $extra, maximumQuantity: $maximumQuantity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncreaseAmount &&
            (identical(other.extra, extra) || other.extra == extra) &&
            (identical(other.maximumQuantity, maximumQuantity) ||
                other.maximumQuantity == maximumQuantity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, extra, maximumQuantity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_IncreaseAmountCopyWith<_$_IncreaseAmount> get copyWith =>
      __$$_IncreaseAmountCopyWithImpl<_$_IncreaseAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExtraFood extra, int maximumQuantity)
        increaseAmount,
    required TResult Function(ExtraFood extra) decreaseAmount,
    required TResult Function(String modifierUuid, String optionUuid)
        selectOneOption,
    required TResult Function(MultipleSelection modifier, String optionUuid)
        selectOption,
    required TResult Function(String comment) changeComment,
    required TResult Function() increaseProductQuantity,
    required TResult Function() decreaseProductQuantity,
  }) {
    return increaseAmount(extra, maximumQuantity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult? Function(ExtraFood extra)? decreaseAmount,
    TResult? Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult? Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult? Function(String comment)? changeComment,
    TResult? Function()? increaseProductQuantity,
    TResult? Function()? decreaseProductQuantity,
  }) {
    return increaseAmount?.call(extra, maximumQuantity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult Function(ExtraFood extra)? decreaseAmount,
    TResult Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult Function(String comment)? changeComment,
    TResult Function()? increaseProductQuantity,
    TResult Function()? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (increaseAmount != null) {
      return increaseAmount(extra, maximumQuantity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncreaseAmount value) increaseAmount,
    required TResult Function(_DecreaseAmount value) decreaseAmount,
    required TResult Function(_SelectOneOption value) selectOneOption,
    required TResult Function(_SelectOption value) selectOption,
    required TResult Function(_ChangeComment value) changeComment,
    required TResult Function(_IncreaseProductQuantity value)
        increaseProductQuantity,
    required TResult Function(_DecreaseProductQuantity value)
        decreaseProductQuantity,
  }) {
    return increaseAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncreaseAmount value)? increaseAmount,
    TResult? Function(_DecreaseAmount value)? decreaseAmount,
    TResult? Function(_SelectOneOption value)? selectOneOption,
    TResult? Function(_SelectOption value)? selectOption,
    TResult? Function(_ChangeComment value)? changeComment,
    TResult? Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult? Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
  }) {
    return increaseAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncreaseAmount value)? increaseAmount,
    TResult Function(_DecreaseAmount value)? decreaseAmount,
    TResult Function(_SelectOneOption value)? selectOneOption,
    TResult Function(_SelectOption value)? selectOption,
    TResult Function(_ChangeComment value)? changeComment,
    TResult Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (increaseAmount != null) {
      return increaseAmount(this);
    }
    return orElse();
  }
}

abstract class _IncreaseAmount implements DetailsProductEvent {
  const factory _IncreaseAmount(
      final ExtraFood extra, final int maximumQuantity) = _$_IncreaseAmount;

  ExtraFood get extra;
  int get maximumQuantity;
  @JsonKey(ignore: true)
  _$$_IncreaseAmountCopyWith<_$_IncreaseAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DecreaseAmountCopyWith<$Res> {
  factory _$$_DecreaseAmountCopyWith(
          _$_DecreaseAmount value, $Res Function(_$_DecreaseAmount) then) =
      __$$_DecreaseAmountCopyWithImpl<$Res>;
  @useResult
  $Res call({ExtraFood extra});

  $ExtraFoodCopyWith<$Res> get extra;
}

/// @nodoc
class __$$_DecreaseAmountCopyWithImpl<$Res>
    extends _$DetailsProductEventCopyWithImpl<$Res, _$_DecreaseAmount>
    implements _$$_DecreaseAmountCopyWith<$Res> {
  __$$_DecreaseAmountCopyWithImpl(
      _$_DecreaseAmount _value, $Res Function(_$_DecreaseAmount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? extra = null,
  }) {
    return _then(_$_DecreaseAmount(
      null == extra
          ? _value.extra
          : extra // ignore: cast_nullable_to_non_nullable
              as ExtraFood,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExtraFoodCopyWith<$Res> get extra {
    return $ExtraFoodCopyWith<$Res>(_value.extra, (value) {
      return _then(_value.copyWith(extra: value));
    });
  }
}

/// @nodoc

class _$_DecreaseAmount implements _DecreaseAmount {
  const _$_DecreaseAmount(this.extra);

  @override
  final ExtraFood extra;

  @override
  String toString() {
    return 'DetailsProductEvent.decreaseAmount(extra: $extra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecreaseAmount &&
            (identical(other.extra, extra) || other.extra == extra));
  }

  @override
  int get hashCode => Object.hash(runtimeType, extra);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DecreaseAmountCopyWith<_$_DecreaseAmount> get copyWith =>
      __$$_DecreaseAmountCopyWithImpl<_$_DecreaseAmount>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExtraFood extra, int maximumQuantity)
        increaseAmount,
    required TResult Function(ExtraFood extra) decreaseAmount,
    required TResult Function(String modifierUuid, String optionUuid)
        selectOneOption,
    required TResult Function(MultipleSelection modifier, String optionUuid)
        selectOption,
    required TResult Function(String comment) changeComment,
    required TResult Function() increaseProductQuantity,
    required TResult Function() decreaseProductQuantity,
  }) {
    return decreaseAmount(extra);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult? Function(ExtraFood extra)? decreaseAmount,
    TResult? Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult? Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult? Function(String comment)? changeComment,
    TResult? Function()? increaseProductQuantity,
    TResult? Function()? decreaseProductQuantity,
  }) {
    return decreaseAmount?.call(extra);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult Function(ExtraFood extra)? decreaseAmount,
    TResult Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult Function(String comment)? changeComment,
    TResult Function()? increaseProductQuantity,
    TResult Function()? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (decreaseAmount != null) {
      return decreaseAmount(extra);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncreaseAmount value) increaseAmount,
    required TResult Function(_DecreaseAmount value) decreaseAmount,
    required TResult Function(_SelectOneOption value) selectOneOption,
    required TResult Function(_SelectOption value) selectOption,
    required TResult Function(_ChangeComment value) changeComment,
    required TResult Function(_IncreaseProductQuantity value)
        increaseProductQuantity,
    required TResult Function(_DecreaseProductQuantity value)
        decreaseProductQuantity,
  }) {
    return decreaseAmount(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncreaseAmount value)? increaseAmount,
    TResult? Function(_DecreaseAmount value)? decreaseAmount,
    TResult? Function(_SelectOneOption value)? selectOneOption,
    TResult? Function(_SelectOption value)? selectOption,
    TResult? Function(_ChangeComment value)? changeComment,
    TResult? Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult? Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
  }) {
    return decreaseAmount?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncreaseAmount value)? increaseAmount,
    TResult Function(_DecreaseAmount value)? decreaseAmount,
    TResult Function(_SelectOneOption value)? selectOneOption,
    TResult Function(_SelectOption value)? selectOption,
    TResult Function(_ChangeComment value)? changeComment,
    TResult Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (decreaseAmount != null) {
      return decreaseAmount(this);
    }
    return orElse();
  }
}

abstract class _DecreaseAmount implements DetailsProductEvent {
  const factory _DecreaseAmount(final ExtraFood extra) = _$_DecreaseAmount;

  ExtraFood get extra;
  @JsonKey(ignore: true)
  _$$_DecreaseAmountCopyWith<_$_DecreaseAmount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectOneOptionCopyWith<$Res> {
  factory _$$_SelectOneOptionCopyWith(
          _$_SelectOneOption value, $Res Function(_$_SelectOneOption) then) =
      __$$_SelectOneOptionCopyWithImpl<$Res>;
  @useResult
  $Res call({String modifierUuid, String optionUuid});
}

/// @nodoc
class __$$_SelectOneOptionCopyWithImpl<$Res>
    extends _$DetailsProductEventCopyWithImpl<$Res, _$_SelectOneOption>
    implements _$$_SelectOneOptionCopyWith<$Res> {
  __$$_SelectOneOptionCopyWithImpl(
      _$_SelectOneOption _value, $Res Function(_$_SelectOneOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modifierUuid = null,
    Object? optionUuid = null,
  }) {
    return _then(_$_SelectOneOption(
      modifierUuid: null == modifierUuid
          ? _value.modifierUuid
          : modifierUuid // ignore: cast_nullable_to_non_nullable
              as String,
      optionUuid: null == optionUuid
          ? _value.optionUuid
          : optionUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectOneOption implements _SelectOneOption {
  const _$_SelectOneOption(
      {required this.modifierUuid, required this.optionUuid});

  @override
  final String modifierUuid;
  @override
  final String optionUuid;

  @override
  String toString() {
    return 'DetailsProductEvent.selectOneOption(modifierUuid: $modifierUuid, optionUuid: $optionUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectOneOption &&
            (identical(other.modifierUuid, modifierUuid) ||
                other.modifierUuid == modifierUuid) &&
            (identical(other.optionUuid, optionUuid) ||
                other.optionUuid == optionUuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, modifierUuid, optionUuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectOneOptionCopyWith<_$_SelectOneOption> get copyWith =>
      __$$_SelectOneOptionCopyWithImpl<_$_SelectOneOption>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExtraFood extra, int maximumQuantity)
        increaseAmount,
    required TResult Function(ExtraFood extra) decreaseAmount,
    required TResult Function(String modifierUuid, String optionUuid)
        selectOneOption,
    required TResult Function(MultipleSelection modifier, String optionUuid)
        selectOption,
    required TResult Function(String comment) changeComment,
    required TResult Function() increaseProductQuantity,
    required TResult Function() decreaseProductQuantity,
  }) {
    return selectOneOption(modifierUuid, optionUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult? Function(ExtraFood extra)? decreaseAmount,
    TResult? Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult? Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult? Function(String comment)? changeComment,
    TResult? Function()? increaseProductQuantity,
    TResult? Function()? decreaseProductQuantity,
  }) {
    return selectOneOption?.call(modifierUuid, optionUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult Function(ExtraFood extra)? decreaseAmount,
    TResult Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult Function(String comment)? changeComment,
    TResult Function()? increaseProductQuantity,
    TResult Function()? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (selectOneOption != null) {
      return selectOneOption(modifierUuid, optionUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncreaseAmount value) increaseAmount,
    required TResult Function(_DecreaseAmount value) decreaseAmount,
    required TResult Function(_SelectOneOption value) selectOneOption,
    required TResult Function(_SelectOption value) selectOption,
    required TResult Function(_ChangeComment value) changeComment,
    required TResult Function(_IncreaseProductQuantity value)
        increaseProductQuantity,
    required TResult Function(_DecreaseProductQuantity value)
        decreaseProductQuantity,
  }) {
    return selectOneOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncreaseAmount value)? increaseAmount,
    TResult? Function(_DecreaseAmount value)? decreaseAmount,
    TResult? Function(_SelectOneOption value)? selectOneOption,
    TResult? Function(_SelectOption value)? selectOption,
    TResult? Function(_ChangeComment value)? changeComment,
    TResult? Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult? Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
  }) {
    return selectOneOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncreaseAmount value)? increaseAmount,
    TResult Function(_DecreaseAmount value)? decreaseAmount,
    TResult Function(_SelectOneOption value)? selectOneOption,
    TResult Function(_SelectOption value)? selectOption,
    TResult Function(_ChangeComment value)? changeComment,
    TResult Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (selectOneOption != null) {
      return selectOneOption(this);
    }
    return orElse();
  }
}

abstract class _SelectOneOption implements DetailsProductEvent {
  const factory _SelectOneOption(
      {required final String modifierUuid,
      required final String optionUuid}) = _$_SelectOneOption;

  String get modifierUuid;
  String get optionUuid;
  @JsonKey(ignore: true)
  _$$_SelectOneOptionCopyWith<_$_SelectOneOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_SelectOptionCopyWith<$Res> {
  factory _$$_SelectOptionCopyWith(
          _$_SelectOption value, $Res Function(_$_SelectOption) then) =
      __$$_SelectOptionCopyWithImpl<$Res>;
  @useResult
  $Res call({MultipleSelection modifier, String optionUuid});

  $MultipleSelectionCopyWith<$Res> get modifier;
}

/// @nodoc
class __$$_SelectOptionCopyWithImpl<$Res>
    extends _$DetailsProductEventCopyWithImpl<$Res, _$_SelectOption>
    implements _$$_SelectOptionCopyWith<$Res> {
  __$$_SelectOptionCopyWithImpl(
      _$_SelectOption _value, $Res Function(_$_SelectOption) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? modifier = null,
    Object? optionUuid = null,
  }) {
    return _then(_$_SelectOption(
      modifier: null == modifier
          ? _value.modifier
          : modifier // ignore: cast_nullable_to_non_nullable
              as MultipleSelection,
      optionUuid: null == optionUuid
          ? _value.optionUuid
          : optionUuid // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $MultipleSelectionCopyWith<$Res> get modifier {
    return $MultipleSelectionCopyWith<$Res>(_value.modifier, (value) {
      return _then(_value.copyWith(modifier: value));
    });
  }
}

/// @nodoc

class _$_SelectOption implements _SelectOption {
  const _$_SelectOption({required this.modifier, required this.optionUuid});

  @override
  final MultipleSelection modifier;
  @override
  final String optionUuid;

  @override
  String toString() {
    return 'DetailsProductEvent.selectOption(modifier: $modifier, optionUuid: $optionUuid)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectOption &&
            (identical(other.modifier, modifier) ||
                other.modifier == modifier) &&
            (identical(other.optionUuid, optionUuid) ||
                other.optionUuid == optionUuid));
  }

  @override
  int get hashCode => Object.hash(runtimeType, modifier, optionUuid);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SelectOptionCopyWith<_$_SelectOption> get copyWith =>
      __$$_SelectOptionCopyWithImpl<_$_SelectOption>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExtraFood extra, int maximumQuantity)
        increaseAmount,
    required TResult Function(ExtraFood extra) decreaseAmount,
    required TResult Function(String modifierUuid, String optionUuid)
        selectOneOption,
    required TResult Function(MultipleSelection modifier, String optionUuid)
        selectOption,
    required TResult Function(String comment) changeComment,
    required TResult Function() increaseProductQuantity,
    required TResult Function() decreaseProductQuantity,
  }) {
    return selectOption(modifier, optionUuid);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult? Function(ExtraFood extra)? decreaseAmount,
    TResult? Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult? Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult? Function(String comment)? changeComment,
    TResult? Function()? increaseProductQuantity,
    TResult? Function()? decreaseProductQuantity,
  }) {
    return selectOption?.call(modifier, optionUuid);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult Function(ExtraFood extra)? decreaseAmount,
    TResult Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult Function(String comment)? changeComment,
    TResult Function()? increaseProductQuantity,
    TResult Function()? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (selectOption != null) {
      return selectOption(modifier, optionUuid);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncreaseAmount value) increaseAmount,
    required TResult Function(_DecreaseAmount value) decreaseAmount,
    required TResult Function(_SelectOneOption value) selectOneOption,
    required TResult Function(_SelectOption value) selectOption,
    required TResult Function(_ChangeComment value) changeComment,
    required TResult Function(_IncreaseProductQuantity value)
        increaseProductQuantity,
    required TResult Function(_DecreaseProductQuantity value)
        decreaseProductQuantity,
  }) {
    return selectOption(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncreaseAmount value)? increaseAmount,
    TResult? Function(_DecreaseAmount value)? decreaseAmount,
    TResult? Function(_SelectOneOption value)? selectOneOption,
    TResult? Function(_SelectOption value)? selectOption,
    TResult? Function(_ChangeComment value)? changeComment,
    TResult? Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult? Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
  }) {
    return selectOption?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncreaseAmount value)? increaseAmount,
    TResult Function(_DecreaseAmount value)? decreaseAmount,
    TResult Function(_SelectOneOption value)? selectOneOption,
    TResult Function(_SelectOption value)? selectOption,
    TResult Function(_ChangeComment value)? changeComment,
    TResult Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (selectOption != null) {
      return selectOption(this);
    }
    return orElse();
  }
}

abstract class _SelectOption implements DetailsProductEvent {
  const factory _SelectOption(
      {required final MultipleSelection modifier,
      required final String optionUuid}) = _$_SelectOption;

  MultipleSelection get modifier;
  String get optionUuid;
  @JsonKey(ignore: true)
  _$$_SelectOptionCopyWith<_$_SelectOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangeCommentCopyWith<$Res> {
  factory _$$_ChangeCommentCopyWith(
          _$_ChangeComment value, $Res Function(_$_ChangeComment) then) =
      __$$_ChangeCommentCopyWithImpl<$Res>;
  @useResult
  $Res call({String comment});
}

/// @nodoc
class __$$_ChangeCommentCopyWithImpl<$Res>
    extends _$DetailsProductEventCopyWithImpl<$Res, _$_ChangeComment>
    implements _$$_ChangeCommentCopyWith<$Res> {
  __$$_ChangeCommentCopyWithImpl(
      _$_ChangeComment _value, $Res Function(_$_ChangeComment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
  }) {
    return _then(_$_ChangeComment(
      null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ChangeComment implements _ChangeComment {
  const _$_ChangeComment(this.comment);

  @override
  final String comment;

  @override
  String toString() {
    return 'DetailsProductEvent.changeComment(comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangeComment &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangeCommentCopyWith<_$_ChangeComment> get copyWith =>
      __$$_ChangeCommentCopyWithImpl<_$_ChangeComment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExtraFood extra, int maximumQuantity)
        increaseAmount,
    required TResult Function(ExtraFood extra) decreaseAmount,
    required TResult Function(String modifierUuid, String optionUuid)
        selectOneOption,
    required TResult Function(MultipleSelection modifier, String optionUuid)
        selectOption,
    required TResult Function(String comment) changeComment,
    required TResult Function() increaseProductQuantity,
    required TResult Function() decreaseProductQuantity,
  }) {
    return changeComment(comment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult? Function(ExtraFood extra)? decreaseAmount,
    TResult? Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult? Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult? Function(String comment)? changeComment,
    TResult? Function()? increaseProductQuantity,
    TResult? Function()? decreaseProductQuantity,
  }) {
    return changeComment?.call(comment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult Function(ExtraFood extra)? decreaseAmount,
    TResult Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult Function(String comment)? changeComment,
    TResult Function()? increaseProductQuantity,
    TResult Function()? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (changeComment != null) {
      return changeComment(comment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncreaseAmount value) increaseAmount,
    required TResult Function(_DecreaseAmount value) decreaseAmount,
    required TResult Function(_SelectOneOption value) selectOneOption,
    required TResult Function(_SelectOption value) selectOption,
    required TResult Function(_ChangeComment value) changeComment,
    required TResult Function(_IncreaseProductQuantity value)
        increaseProductQuantity,
    required TResult Function(_DecreaseProductQuantity value)
        decreaseProductQuantity,
  }) {
    return changeComment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncreaseAmount value)? increaseAmount,
    TResult? Function(_DecreaseAmount value)? decreaseAmount,
    TResult? Function(_SelectOneOption value)? selectOneOption,
    TResult? Function(_SelectOption value)? selectOption,
    TResult? Function(_ChangeComment value)? changeComment,
    TResult? Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult? Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
  }) {
    return changeComment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncreaseAmount value)? increaseAmount,
    TResult Function(_DecreaseAmount value)? decreaseAmount,
    TResult Function(_SelectOneOption value)? selectOneOption,
    TResult Function(_SelectOption value)? selectOption,
    TResult Function(_ChangeComment value)? changeComment,
    TResult Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (changeComment != null) {
      return changeComment(this);
    }
    return orElse();
  }
}

abstract class _ChangeComment implements DetailsProductEvent {
  const factory _ChangeComment(final String comment) = _$_ChangeComment;

  String get comment;
  @JsonKey(ignore: true)
  _$$_ChangeCommentCopyWith<_$_ChangeComment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_IncreaseProductQuantityCopyWith<$Res> {
  factory _$$_IncreaseProductQuantityCopyWith(_$_IncreaseProductQuantity value,
          $Res Function(_$_IncreaseProductQuantity) then) =
      __$$_IncreaseProductQuantityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_IncreaseProductQuantityCopyWithImpl<$Res>
    extends _$DetailsProductEventCopyWithImpl<$Res, _$_IncreaseProductQuantity>
    implements _$$_IncreaseProductQuantityCopyWith<$Res> {
  __$$_IncreaseProductQuantityCopyWithImpl(_$_IncreaseProductQuantity _value,
      $Res Function(_$_IncreaseProductQuantity) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_IncreaseProductQuantity implements _IncreaseProductQuantity {
  const _$_IncreaseProductQuantity();

  @override
  String toString() {
    return 'DetailsProductEvent.increaseProductQuantity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IncreaseProductQuantity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExtraFood extra, int maximumQuantity)
        increaseAmount,
    required TResult Function(ExtraFood extra) decreaseAmount,
    required TResult Function(String modifierUuid, String optionUuid)
        selectOneOption,
    required TResult Function(MultipleSelection modifier, String optionUuid)
        selectOption,
    required TResult Function(String comment) changeComment,
    required TResult Function() increaseProductQuantity,
    required TResult Function() decreaseProductQuantity,
  }) {
    return increaseProductQuantity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult? Function(ExtraFood extra)? decreaseAmount,
    TResult? Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult? Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult? Function(String comment)? changeComment,
    TResult? Function()? increaseProductQuantity,
    TResult? Function()? decreaseProductQuantity,
  }) {
    return increaseProductQuantity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult Function(ExtraFood extra)? decreaseAmount,
    TResult Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult Function(String comment)? changeComment,
    TResult Function()? increaseProductQuantity,
    TResult Function()? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (increaseProductQuantity != null) {
      return increaseProductQuantity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncreaseAmount value) increaseAmount,
    required TResult Function(_DecreaseAmount value) decreaseAmount,
    required TResult Function(_SelectOneOption value) selectOneOption,
    required TResult Function(_SelectOption value) selectOption,
    required TResult Function(_ChangeComment value) changeComment,
    required TResult Function(_IncreaseProductQuantity value)
        increaseProductQuantity,
    required TResult Function(_DecreaseProductQuantity value)
        decreaseProductQuantity,
  }) {
    return increaseProductQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncreaseAmount value)? increaseAmount,
    TResult? Function(_DecreaseAmount value)? decreaseAmount,
    TResult? Function(_SelectOneOption value)? selectOneOption,
    TResult? Function(_SelectOption value)? selectOption,
    TResult? Function(_ChangeComment value)? changeComment,
    TResult? Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult? Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
  }) {
    return increaseProductQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncreaseAmount value)? increaseAmount,
    TResult Function(_DecreaseAmount value)? decreaseAmount,
    TResult Function(_SelectOneOption value)? selectOneOption,
    TResult Function(_SelectOption value)? selectOption,
    TResult Function(_ChangeComment value)? changeComment,
    TResult Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (increaseProductQuantity != null) {
      return increaseProductQuantity(this);
    }
    return orElse();
  }
}

abstract class _IncreaseProductQuantity implements DetailsProductEvent {
  const factory _IncreaseProductQuantity() = _$_IncreaseProductQuantity;
}

/// @nodoc
abstract class _$$_DecreaseProductQuantityCopyWith<$Res> {
  factory _$$_DecreaseProductQuantityCopyWith(_$_DecreaseProductQuantity value,
          $Res Function(_$_DecreaseProductQuantity) then) =
      __$$_DecreaseProductQuantityCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DecreaseProductQuantityCopyWithImpl<$Res>
    extends _$DetailsProductEventCopyWithImpl<$Res, _$_DecreaseProductQuantity>
    implements _$$_DecreaseProductQuantityCopyWith<$Res> {
  __$$_DecreaseProductQuantityCopyWithImpl(_$_DecreaseProductQuantity _value,
      $Res Function(_$_DecreaseProductQuantity) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_DecreaseProductQuantity implements _DecreaseProductQuantity {
  const _$_DecreaseProductQuantity();

  @override
  String toString() {
    return 'DetailsProductEvent.decreaseProductQuantity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecreaseProductQuantity);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ExtraFood extra, int maximumQuantity)
        increaseAmount,
    required TResult Function(ExtraFood extra) decreaseAmount,
    required TResult Function(String modifierUuid, String optionUuid)
        selectOneOption,
    required TResult Function(MultipleSelection modifier, String optionUuid)
        selectOption,
    required TResult Function(String comment) changeComment,
    required TResult Function() increaseProductQuantity,
    required TResult Function() decreaseProductQuantity,
  }) {
    return decreaseProductQuantity();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult? Function(ExtraFood extra)? decreaseAmount,
    TResult? Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult? Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult? Function(String comment)? changeComment,
    TResult? Function()? increaseProductQuantity,
    TResult? Function()? decreaseProductQuantity,
  }) {
    return decreaseProductQuantity?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(ExtraFood extra, int maximumQuantity)? increaseAmount,
    TResult Function(ExtraFood extra)? decreaseAmount,
    TResult Function(String modifierUuid, String optionUuid)? selectOneOption,
    TResult Function(MultipleSelection modifier, String optionUuid)?
        selectOption,
    TResult Function(String comment)? changeComment,
    TResult Function()? increaseProductQuantity,
    TResult Function()? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (decreaseProductQuantity != null) {
      return decreaseProductQuantity();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IncreaseAmount value) increaseAmount,
    required TResult Function(_DecreaseAmount value) decreaseAmount,
    required TResult Function(_SelectOneOption value) selectOneOption,
    required TResult Function(_SelectOption value) selectOption,
    required TResult Function(_ChangeComment value) changeComment,
    required TResult Function(_IncreaseProductQuantity value)
        increaseProductQuantity,
    required TResult Function(_DecreaseProductQuantity value)
        decreaseProductQuantity,
  }) {
    return decreaseProductQuantity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_IncreaseAmount value)? increaseAmount,
    TResult? Function(_DecreaseAmount value)? decreaseAmount,
    TResult? Function(_SelectOneOption value)? selectOneOption,
    TResult? Function(_SelectOption value)? selectOption,
    TResult? Function(_ChangeComment value)? changeComment,
    TResult? Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult? Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
  }) {
    return decreaseProductQuantity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_IncreaseAmount value)? increaseAmount,
    TResult Function(_DecreaseAmount value)? decreaseAmount,
    TResult Function(_SelectOneOption value)? selectOneOption,
    TResult Function(_SelectOption value)? selectOption,
    TResult Function(_ChangeComment value)? changeComment,
    TResult Function(_IncreaseProductQuantity value)? increaseProductQuantity,
    TResult Function(_DecreaseProductQuantity value)? decreaseProductQuantity,
    required TResult orElse(),
  }) {
    if (decreaseProductQuantity != null) {
      return decreaseProductQuantity(this);
    }
    return orElse();
  }
}

abstract class _DecreaseProductQuantity implements DetailsProductEvent {
  const factory _DecreaseProductQuantity() = _$_DecreaseProductQuantity;
}

/// @nodoc
mixin _$DetailsProductState {
  String get comment => throw _privateConstructorUsedError;
  int get productQuantity =>
      throw _privateConstructorUsedError; //required ProductDto product,
  Map<String, int> get extrasAmountByModifier =>
      throw _privateConstructorUsedError;
  Map<String, Option<String>> get optionSelectedByModifier =>
      throw _privateConstructorUsedError;
  Map<String, List<String>> get multipleSelected =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DetailsProductStateCopyWith<DetailsProductState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailsProductStateCopyWith<$Res> {
  factory $DetailsProductStateCopyWith(
          DetailsProductState value, $Res Function(DetailsProductState) then) =
      _$DetailsProductStateCopyWithImpl<$Res, DetailsProductState>;
  @useResult
  $Res call(
      {String comment,
      int productQuantity,
      Map<String, int> extrasAmountByModifier,
      Map<String, Option<String>> optionSelectedByModifier,
      Map<String, List<String>> multipleSelected});
}

/// @nodoc
class _$DetailsProductStateCopyWithImpl<$Res, $Val extends DetailsProductState>
    implements $DetailsProductStateCopyWith<$Res> {
  _$DetailsProductStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? productQuantity = null,
    Object? extrasAmountByModifier = null,
    Object? optionSelectedByModifier = null,
    Object? multipleSelected = null,
  }) {
    return _then(_value.copyWith(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      productQuantity: null == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      extrasAmountByModifier: null == extrasAmountByModifier
          ? _value.extrasAmountByModifier
          : extrasAmountByModifier // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      optionSelectedByModifier: null == optionSelectedByModifier
          ? _value.optionSelectedByModifier
          : optionSelectedByModifier // ignore: cast_nullable_to_non_nullable
              as Map<String, Option<String>>,
      multipleSelected: null == multipleSelected
          ? _value.multipleSelected
          : multipleSelected // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DetailsProductStateCopyWith<$Res>
    implements $DetailsProductStateCopyWith<$Res> {
  factory _$$_DetailsProductStateCopyWith(_$_DetailsProductState value,
          $Res Function(_$_DetailsProductState) then) =
      __$$_DetailsProductStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String comment,
      int productQuantity,
      Map<String, int> extrasAmountByModifier,
      Map<String, Option<String>> optionSelectedByModifier,
      Map<String, List<String>> multipleSelected});
}

/// @nodoc
class __$$_DetailsProductStateCopyWithImpl<$Res>
    extends _$DetailsProductStateCopyWithImpl<$Res, _$_DetailsProductState>
    implements _$$_DetailsProductStateCopyWith<$Res> {
  __$$_DetailsProductStateCopyWithImpl(_$_DetailsProductState _value,
      $Res Function(_$_DetailsProductState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? comment = null,
    Object? productQuantity = null,
    Object? extrasAmountByModifier = null,
    Object? optionSelectedByModifier = null,
    Object? multipleSelected = null,
  }) {
    return _then(_$_DetailsProductState(
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      productQuantity: null == productQuantity
          ? _value.productQuantity
          : productQuantity // ignore: cast_nullable_to_non_nullable
              as int,
      extrasAmountByModifier: null == extrasAmountByModifier
          ? _value._extrasAmountByModifier
          : extrasAmountByModifier // ignore: cast_nullable_to_non_nullable
              as Map<String, int>,
      optionSelectedByModifier: null == optionSelectedByModifier
          ? _value._optionSelectedByModifier
          : optionSelectedByModifier // ignore: cast_nullable_to_non_nullable
              as Map<String, Option<String>>,
      multipleSelected: null == multipleSelected
          ? _value._multipleSelected
          : multipleSelected // ignore: cast_nullable_to_non_nullable
              as Map<String, List<String>>,
    ));
  }
}

/// @nodoc

class _$_DetailsProductState extends _DetailsProductState {
  const _$_DetailsProductState(
      {required this.comment,
      required this.productQuantity,
      required final Map<String, int> extrasAmountByModifier,
      required final Map<String, Option<String>> optionSelectedByModifier,
      required final Map<String, List<String>> multipleSelected})
      : _extrasAmountByModifier = extrasAmountByModifier,
        _optionSelectedByModifier = optionSelectedByModifier,
        _multipleSelected = multipleSelected,
        super._();

  @override
  final String comment;
  @override
  final int productQuantity;
//required ProductDto product,
  final Map<String, int> _extrasAmountByModifier;
//required ProductDto product,
  @override
  Map<String, int> get extrasAmountByModifier {
    if (_extrasAmountByModifier is EqualUnmodifiableMapView)
      return _extrasAmountByModifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_extrasAmountByModifier);
  }

  final Map<String, Option<String>> _optionSelectedByModifier;
  @override
  Map<String, Option<String>> get optionSelectedByModifier {
    if (_optionSelectedByModifier is EqualUnmodifiableMapView)
      return _optionSelectedByModifier;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_optionSelectedByModifier);
  }

  final Map<String, List<String>> _multipleSelected;
  @override
  Map<String, List<String>> get multipleSelected {
    if (_multipleSelected is EqualUnmodifiableMapView) return _multipleSelected;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_multipleSelected);
  }

  @override
  String toString() {
    return 'DetailsProductState(comment: $comment, productQuantity: $productQuantity, extrasAmountByModifier: $extrasAmountByModifier, optionSelectedByModifier: $optionSelectedByModifier, multipleSelected: $multipleSelected)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DetailsProductState &&
            (identical(other.comment, comment) || other.comment == comment) &&
            (identical(other.productQuantity, productQuantity) ||
                other.productQuantity == productQuantity) &&
            const DeepCollectionEquality().equals(
                other._extrasAmountByModifier, _extrasAmountByModifier) &&
            const DeepCollectionEquality().equals(
                other._optionSelectedByModifier, _optionSelectedByModifier) &&
            const DeepCollectionEquality()
                .equals(other._multipleSelected, _multipleSelected));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      comment,
      productQuantity,
      const DeepCollectionEquality().hash(_extrasAmountByModifier),
      const DeepCollectionEquality().hash(_optionSelectedByModifier),
      const DeepCollectionEquality().hash(_multipleSelected));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DetailsProductStateCopyWith<_$_DetailsProductState> get copyWith =>
      __$$_DetailsProductStateCopyWithImpl<_$_DetailsProductState>(
          this, _$identity);
}

abstract class _DetailsProductState extends DetailsProductState {
  const factory _DetailsProductState(
          {required final String comment,
          required final int productQuantity,
          required final Map<String, int> extrasAmountByModifier,
          required final Map<String, Option<String>> optionSelectedByModifier,
          required final Map<String, List<String>> multipleSelected}) =
      _$_DetailsProductState;
  const _DetailsProductState._() : super._();

  @override
  String get comment;
  @override
  int get productQuantity;
  @override //required ProductDto product,
  Map<String, int> get extrasAmountByModifier;
  @override
  Map<String, Option<String>> get optionSelectedByModifier;
  @override
  Map<String, List<String>> get multipleSelected;
  @override
  @JsonKey(ignore: true)
  _$$_DetailsProductStateCopyWith<_$_DetailsProductState> get copyWith =>
      throw _privateConstructorUsedError;
}
