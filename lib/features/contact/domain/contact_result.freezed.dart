// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contact_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ContactResult {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Unit unit) succes,
    required TResult Function(ValueFailure<String> failure) formError,
    required TResult Function(GlobalFailure<dynamic> err) notSucces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Unit unit)? succes,
    TResult? Function(ValueFailure<String> failure)? formError,
    TResult? Function(GlobalFailure<dynamic> err)? notSucces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Unit unit)? succes,
    TResult Function(ValueFailure<String> failure)? formError,
    TResult Function(GlobalFailure<dynamic> err)? notSucces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) succes,
    required TResult Function(FormError value) formError,
    required TResult Function(NotSuccess value) notSucces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success value)? succes,
    TResult? Function(FormError value)? formError,
    TResult? Function(NotSuccess value)? notSucces,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? succes,
    TResult Function(FormError value)? formError,
    TResult Function(NotSuccess value)? notSucces,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactResultCopyWith<$Res> {
  factory $ContactResultCopyWith(
          ContactResult value, $Res Function(ContactResult) then) =
      _$ContactResultCopyWithImpl<$Res, ContactResult>;
}

/// @nodoc
class _$ContactResultCopyWithImpl<$Res, $Val extends ContactResult>
    implements $ContactResultCopyWith<$Res> {
  _$ContactResultCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$SuccessCopyWith<$Res> {
  factory _$$SuccessCopyWith(_$Success value, $Res Function(_$Success) then) =
      __$$SuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({Unit unit});
}

/// @nodoc
class __$$SuccessCopyWithImpl<$Res>
    extends _$ContactResultCopyWithImpl<$Res, _$Success>
    implements _$$SuccessCopyWith<$Res> {
  __$$SuccessCopyWithImpl(_$Success _value, $Res Function(_$Success) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? unit = null,
  }) {
    return _then(_$Success(
      null == unit
          ? _value.unit
          : unit // ignore: cast_nullable_to_non_nullable
              as Unit,
    ));
  }
}

/// @nodoc

class _$Success extends Success {
  const _$Success(this.unit) : super._();

  @override
  final Unit unit;

  @override
  String toString() {
    return 'ContactResult.succes(unit: $unit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$Success &&
            (identical(other.unit, unit) || other.unit == unit));
  }

  @override
  int get hashCode => Object.hash(runtimeType, unit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SuccessCopyWith<_$Success> get copyWith =>
      __$$SuccessCopyWithImpl<_$Success>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Unit unit) succes,
    required TResult Function(ValueFailure<String> failure) formError,
    required TResult Function(GlobalFailure<dynamic> err) notSucces,
  }) {
    return succes(unit);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Unit unit)? succes,
    TResult? Function(ValueFailure<String> failure)? formError,
    TResult? Function(GlobalFailure<dynamic> err)? notSucces,
  }) {
    return succes?.call(unit);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Unit unit)? succes,
    TResult Function(ValueFailure<String> failure)? formError,
    TResult Function(GlobalFailure<dynamic> err)? notSucces,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(unit);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) succes,
    required TResult Function(FormError value) formError,
    required TResult Function(NotSuccess value) notSucces,
  }) {
    return succes(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success value)? succes,
    TResult? Function(FormError value)? formError,
    TResult? Function(NotSuccess value)? notSucces,
  }) {
    return succes?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? succes,
    TResult Function(FormError value)? formError,
    TResult Function(NotSuccess value)? notSucces,
    required TResult orElse(),
  }) {
    if (succes != null) {
      return succes(this);
    }
    return orElse();
  }
}

abstract class Success extends ContactResult {
  const factory Success(final Unit unit) = _$Success;
  const Success._() : super._();

  Unit get unit;
  @JsonKey(ignore: true)
  _$$SuccessCopyWith<_$Success> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FormErrorCopyWith<$Res> {
  factory _$$FormErrorCopyWith(
          _$FormError value, $Res Function(_$FormError) then) =
      __$$FormErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({ValueFailure<String> failure});

  $ValueFailureCopyWith<String, $Res> get failure;
}

/// @nodoc
class __$$FormErrorCopyWithImpl<$Res>
    extends _$ContactResultCopyWithImpl<$Res, _$FormError>
    implements _$$FormErrorCopyWith<$Res> {
  __$$FormErrorCopyWithImpl(
      _$FormError _value, $Res Function(_$FormError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$FormError(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as ValueFailure<String>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ValueFailureCopyWith<String, $Res> get failure {
    return $ValueFailureCopyWith<String, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$FormError extends FormError {
  const _$FormError(this.failure) : super._();

  @override
  final ValueFailure<String> failure;

  @override
  String toString() {
    return 'ContactResult.formError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FormError &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FormErrorCopyWith<_$FormError> get copyWith =>
      __$$FormErrorCopyWithImpl<_$FormError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Unit unit) succes,
    required TResult Function(ValueFailure<String> failure) formError,
    required TResult Function(GlobalFailure<dynamic> err) notSucces,
  }) {
    return formError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Unit unit)? succes,
    TResult? Function(ValueFailure<String> failure)? formError,
    TResult? Function(GlobalFailure<dynamic> err)? notSucces,
  }) {
    return formError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Unit unit)? succes,
    TResult Function(ValueFailure<String> failure)? formError,
    TResult Function(GlobalFailure<dynamic> err)? notSucces,
    required TResult orElse(),
  }) {
    if (formError != null) {
      return formError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) succes,
    required TResult Function(FormError value) formError,
    required TResult Function(NotSuccess value) notSucces,
  }) {
    return formError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success value)? succes,
    TResult? Function(FormError value)? formError,
    TResult? Function(NotSuccess value)? notSucces,
  }) {
    return formError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? succes,
    TResult Function(FormError value)? formError,
    TResult Function(NotSuccess value)? notSucces,
    required TResult orElse(),
  }) {
    if (formError != null) {
      return formError(this);
    }
    return orElse();
  }
}

abstract class FormError extends ContactResult {
  const factory FormError(final ValueFailure<String> failure) = _$FormError;
  const FormError._() : super._();

  ValueFailure<String> get failure;
  @JsonKey(ignore: true)
  _$$FormErrorCopyWith<_$FormError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$NotSuccessCopyWith<$Res> {
  factory _$$NotSuccessCopyWith(
          _$NotSuccess value, $Res Function(_$NotSuccess) then) =
      __$$NotSuccessCopyWithImpl<$Res>;
  @useResult
  $Res call({GlobalFailure<dynamic> err});

  $GlobalFailureCopyWith<dynamic, $Res> get err;
}

/// @nodoc
class __$$NotSuccessCopyWithImpl<$Res>
    extends _$ContactResultCopyWithImpl<$Res, _$NotSuccess>
    implements _$$NotSuccessCopyWith<$Res> {
  __$$NotSuccessCopyWithImpl(
      _$NotSuccess _value, $Res Function(_$NotSuccess) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? err = null,
  }) {
    return _then(_$NotSuccess(
      null == err
          ? _value.err
          : err // ignore: cast_nullable_to_non_nullable
              as GlobalFailure<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GlobalFailureCopyWith<dynamic, $Res> get err {
    return $GlobalFailureCopyWith<dynamic, $Res>(_value.err, (value) {
      return _then(_value.copyWith(err: value));
    });
  }
}

/// @nodoc

class _$NotSuccess extends NotSuccess {
  const _$NotSuccess(this.err) : super._();

  @override
  final GlobalFailure<dynamic> err;

  @override
  String toString() {
    return 'ContactResult.notSucces(err: $err)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NotSuccess &&
            (identical(other.err, err) || other.err == err));
  }

  @override
  int get hashCode => Object.hash(runtimeType, err);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NotSuccessCopyWith<_$NotSuccess> get copyWith =>
      __$$NotSuccessCopyWithImpl<_$NotSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Unit unit) succes,
    required TResult Function(ValueFailure<String> failure) formError,
    required TResult Function(GlobalFailure<dynamic> err) notSucces,
  }) {
    return notSucces(err);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Unit unit)? succes,
    TResult? Function(ValueFailure<String> failure)? formError,
    TResult? Function(GlobalFailure<dynamic> err)? notSucces,
  }) {
    return notSucces?.call(err);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Unit unit)? succes,
    TResult Function(ValueFailure<String> failure)? formError,
    TResult Function(GlobalFailure<dynamic> err)? notSucces,
    required TResult orElse(),
  }) {
    if (notSucces != null) {
      return notSucces(err);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Success value) succes,
    required TResult Function(FormError value) formError,
    required TResult Function(NotSuccess value) notSucces,
  }) {
    return notSucces(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Success value)? succes,
    TResult? Function(FormError value)? formError,
    TResult? Function(NotSuccess value)? notSucces,
  }) {
    return notSucces?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Success value)? succes,
    TResult Function(FormError value)? formError,
    TResult Function(NotSuccess value)? notSucces,
    required TResult orElse(),
  }) {
    if (notSucces != null) {
      return notSucces(this);
    }
    return orElse();
  }
}

abstract class NotSuccess extends ContactResult {
  const factory NotSuccess(final GlobalFailure<dynamic> err) = _$NotSuccess;
  const NotSuccess._() : super._();

  GlobalFailure<dynamic> get err;
  @JsonKey(ignore: true)
  _$$NotSuccessCopyWith<_$NotSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
