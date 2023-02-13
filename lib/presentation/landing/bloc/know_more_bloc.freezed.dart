// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'know_more_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KnowMoreEvent {
  String get email => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendContactEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendContactEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendContactEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendContactEmail value) sendContactEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendContactEmail value)? sendContactEmail,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendContactEmail value)? sendContactEmail,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KnowMoreEventCopyWith<KnowMoreEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnowMoreEventCopyWith<$Res> {
  factory $KnowMoreEventCopyWith(
          KnowMoreEvent value, $Res Function(KnowMoreEvent) then) =
      _$KnowMoreEventCopyWithImpl<$Res, KnowMoreEvent>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class _$KnowMoreEventCopyWithImpl<$Res, $Val extends KnowMoreEvent>
    implements $KnowMoreEventCopyWith<$Res> {
  _$KnowMoreEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SendContactEmailCopyWith<$Res>
    implements $KnowMoreEventCopyWith<$Res> {
  factory _$$SendContactEmailCopyWith(
          _$SendContactEmail value, $Res Function(_$SendContactEmail) then) =
      __$$SendContactEmailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$SendContactEmailCopyWithImpl<$Res>
    extends _$KnowMoreEventCopyWithImpl<$Res, _$SendContactEmail>
    implements _$$SendContactEmailCopyWith<$Res> {
  __$$SendContactEmailCopyWithImpl(
      _$SendContactEmail _value, $Res Function(_$SendContactEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$SendContactEmail(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$SendContactEmail implements SendContactEmail {
  const _$SendContactEmail({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'KnowMoreEvent.sendContactEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SendContactEmail &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SendContactEmailCopyWith<_$SendContactEmail> get copyWith =>
      __$$SendContactEmailCopyWithImpl<_$SendContactEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) sendContactEmail,
  }) {
    return sendContactEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? sendContactEmail,
  }) {
    return sendContactEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? sendContactEmail,
    required TResult orElse(),
  }) {
    if (sendContactEmail != null) {
      return sendContactEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SendContactEmail value) sendContactEmail,
  }) {
    return sendContactEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(SendContactEmail value)? sendContactEmail,
  }) {
    return sendContactEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(SendContactEmail value)? sendContactEmail,
    required TResult orElse(),
  }) {
    if (sendContactEmail != null) {
      return sendContactEmail(this);
    }
    return orElse();
  }
}

abstract class SendContactEmail implements KnowMoreEvent {
  const factory SendContactEmail({required final String email}) =
      _$SendContactEmail;

  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$SendContactEmailCopyWith<_$SendContactEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$KnowMoreState {
  bool get isSubmitting => throw _privateConstructorUsedError;
  Option<ContactResult> get contactFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KnowMoreStateCopyWith<KnowMoreState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnowMoreStateCopyWith<$Res> {
  factory $KnowMoreStateCopyWith(
          KnowMoreState value, $Res Function(KnowMoreState) then) =
      _$KnowMoreStateCopyWithImpl<$Res, KnowMoreState>;
  @useResult
  $Res call(
      {bool isSubmitting, Option<ContactResult> contactFailureOrSuccessOption});
}

/// @nodoc
class _$KnowMoreStateCopyWithImpl<$Res, $Val extends KnowMoreState>
    implements $KnowMoreStateCopyWith<$Res> {
  _$KnowMoreStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? contactFailureOrSuccessOption = null,
  }) {
    return _then(_value.copyWith(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      contactFailureOrSuccessOption: null == contactFailureOrSuccessOption
          ? _value.contactFailureOrSuccessOption
          : contactFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<ContactResult>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KnowMoreStateCopyWith<$Res>
    implements $KnowMoreStateCopyWith<$Res> {
  factory _$$_KnowMoreStateCopyWith(
          _$_KnowMoreState value, $Res Function(_$_KnowMoreState) then) =
      __$$_KnowMoreStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isSubmitting, Option<ContactResult> contactFailureOrSuccessOption});
}

/// @nodoc
class __$$_KnowMoreStateCopyWithImpl<$Res>
    extends _$KnowMoreStateCopyWithImpl<$Res, _$_KnowMoreState>
    implements _$$_KnowMoreStateCopyWith<$Res> {
  __$$_KnowMoreStateCopyWithImpl(
      _$_KnowMoreState _value, $Res Function(_$_KnowMoreState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isSubmitting = null,
    Object? contactFailureOrSuccessOption = null,
  }) {
    return _then(_$_KnowMoreState(
      isSubmitting: null == isSubmitting
          ? _value.isSubmitting
          : isSubmitting // ignore: cast_nullable_to_non_nullable
              as bool,
      contactFailureOrSuccessOption: null == contactFailureOrSuccessOption
          ? _value.contactFailureOrSuccessOption
          : contactFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<ContactResult>,
    ));
  }
}

/// @nodoc

class _$_KnowMoreState implements _KnowMoreState {
  const _$_KnowMoreState(
      {required this.isSubmitting,
      required this.contactFailureOrSuccessOption});

  @override
  final bool isSubmitting;
  @override
  final Option<ContactResult> contactFailureOrSuccessOption;

  @override
  String toString() {
    return 'KnowMoreState(isSubmitting: $isSubmitting, contactFailureOrSuccessOption: $contactFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KnowMoreState &&
            (identical(other.isSubmitting, isSubmitting) ||
                other.isSubmitting == isSubmitting) &&
            (identical(other.contactFailureOrSuccessOption,
                    contactFailureOrSuccessOption) ||
                other.contactFailureOrSuccessOption ==
                    contactFailureOrSuccessOption));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, isSubmitting, contactFailureOrSuccessOption);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KnowMoreStateCopyWith<_$_KnowMoreState> get copyWith =>
      __$$_KnowMoreStateCopyWithImpl<_$_KnowMoreState>(this, _$identity);
}

abstract class _KnowMoreState implements KnowMoreState {
  const factory _KnowMoreState(
          {required final bool isSubmitting,
          required final Option<ContactResult> contactFailureOrSuccessOption}) =
      _$_KnowMoreState;

  @override
  bool get isSubmitting;
  @override
  Option<ContactResult> get contactFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_KnowMoreStateCopyWith<_$_KnowMoreState> get copyWith =>
      throw _privateConstructorUsedError;
}
