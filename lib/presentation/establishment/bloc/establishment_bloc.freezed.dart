// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'establishment_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EstablishmentEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) started,
    required TResult Function(StreamAction action, String? name) streamCall,
    required TResult Function() redirectOn404,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? started,
    TResult? Function(StreamAction action, String? name)? streamCall,
    TResult? Function()? redirectOn404,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? started,
    TResult Function(StreamAction action, String? name)? streamCall,
    TResult Function()? redirectOn404,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StreamCall value) streamCall,
    required TResult Function(_RedirectOn404 value) redirectOn404,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StreamCall value)? streamCall,
    TResult? Function(_RedirectOn404 value)? redirectOn404,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StreamCall value)? streamCall,
    TResult Function(_RedirectOn404 value)? redirectOn404,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstablishmentEventCopyWith<$Res> {
  factory $EstablishmentEventCopyWith(
          EstablishmentEvent value, $Res Function(EstablishmentEvent) then) =
      _$EstablishmentEventCopyWithImpl<$Res, EstablishmentEvent>;
}

/// @nodoc
class _$EstablishmentEventCopyWithImpl<$Res, $Val extends EstablishmentEvent>
    implements $EstablishmentEventCopyWith<$Res> {
  _$EstablishmentEventCopyWithImpl(this._value, this._then);

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
  @useResult
  $Res call({String? name});
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$EstablishmentEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
  }) {
    return _then(_$_Started(
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started(this.name);

  @override
  final String? name;

  @override
  String toString() {
    return 'EstablishmentEvent.started(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Started &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      __$$_StartedCopyWithImpl<_$_Started>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) started,
    required TResult Function(StreamAction action, String? name) streamCall,
    required TResult Function() redirectOn404,
  }) {
    return started(name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? started,
    TResult? Function(StreamAction action, String? name)? streamCall,
    TResult? Function()? redirectOn404,
  }) {
    return started?.call(name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? started,
    TResult Function(StreamAction action, String? name)? streamCall,
    TResult Function()? redirectOn404,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StreamCall value) streamCall,
    required TResult Function(_RedirectOn404 value) redirectOn404,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StreamCall value)? streamCall,
    TResult? Function(_RedirectOn404 value)? redirectOn404,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StreamCall value)? streamCall,
    TResult Function(_RedirectOn404 value)? redirectOn404,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements EstablishmentEvent {
  const factory _Started(final String? name) = _$_Started;

  String? get name;
  @JsonKey(ignore: true)
  _$$_StartedCopyWith<_$_Started> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_StreamCallCopyWith<$Res> {
  factory _$$_StreamCallCopyWith(
          _$_StreamCall value, $Res Function(_$_StreamCall) then) =
      __$$_StreamCallCopyWithImpl<$Res>;
  @useResult
  $Res call({StreamAction action, String? name});
}

/// @nodoc
class __$$_StreamCallCopyWithImpl<$Res>
    extends _$EstablishmentEventCopyWithImpl<$Res, _$_StreamCall>
    implements _$$_StreamCallCopyWith<$Res> {
  __$$_StreamCallCopyWithImpl(
      _$_StreamCall _value, $Res Function(_$_StreamCall) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? action = null,
    Object? name = freezed,
  }) {
    return _then(_$_StreamCall(
      null == action
          ? _value.action
          : action // ignore: cast_nullable_to_non_nullable
              as StreamAction,
      freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_StreamCall implements _StreamCall {
  const _$_StreamCall(this.action, this.name);

  @override
  final StreamAction action;
  @override
  final String? name;

  @override
  String toString() {
    return 'EstablishmentEvent.streamCall(action: $action, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StreamCall &&
            (identical(other.action, action) || other.action == action) &&
            (identical(other.name, name) || other.name == name));
  }

  @override
  int get hashCode => Object.hash(runtimeType, action, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StreamCallCopyWith<_$_StreamCall> get copyWith =>
      __$$_StreamCallCopyWithImpl<_$_StreamCall>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) started,
    required TResult Function(StreamAction action, String? name) streamCall,
    required TResult Function() redirectOn404,
  }) {
    return streamCall(action, name);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? started,
    TResult? Function(StreamAction action, String? name)? streamCall,
    TResult? Function()? redirectOn404,
  }) {
    return streamCall?.call(action, name);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? started,
    TResult Function(StreamAction action, String? name)? streamCall,
    TResult Function()? redirectOn404,
    required TResult orElse(),
  }) {
    if (streamCall != null) {
      return streamCall(action, name);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StreamCall value) streamCall,
    required TResult Function(_RedirectOn404 value) redirectOn404,
  }) {
    return streamCall(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StreamCall value)? streamCall,
    TResult? Function(_RedirectOn404 value)? redirectOn404,
  }) {
    return streamCall?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StreamCall value)? streamCall,
    TResult Function(_RedirectOn404 value)? redirectOn404,
    required TResult orElse(),
  }) {
    if (streamCall != null) {
      return streamCall(this);
    }
    return orElse();
  }
}

abstract class _StreamCall implements EstablishmentEvent {
  const factory _StreamCall(final StreamAction action, final String? name) =
      _$_StreamCall;

  StreamAction get action;
  String? get name;
  @JsonKey(ignore: true)
  _$$_StreamCallCopyWith<_$_StreamCall> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RedirectOn404CopyWith<$Res> {
  factory _$$_RedirectOn404CopyWith(
          _$_RedirectOn404 value, $Res Function(_$_RedirectOn404) then) =
      __$$_RedirectOn404CopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RedirectOn404CopyWithImpl<$Res>
    extends _$EstablishmentEventCopyWithImpl<$Res, _$_RedirectOn404>
    implements _$$_RedirectOn404CopyWith<$Res> {
  __$$_RedirectOn404CopyWithImpl(
      _$_RedirectOn404 _value, $Res Function(_$_RedirectOn404) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_RedirectOn404 implements _RedirectOn404 {
  const _$_RedirectOn404();

  @override
  String toString() {
    return 'EstablishmentEvent.redirectOn404()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_RedirectOn404);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? name) started,
    required TResult Function(StreamAction action, String? name) streamCall,
    required TResult Function() redirectOn404,
  }) {
    return redirectOn404();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String? name)? started,
    TResult? Function(StreamAction action, String? name)? streamCall,
    TResult? Function()? redirectOn404,
  }) {
    return redirectOn404?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? name)? started,
    TResult Function(StreamAction action, String? name)? streamCall,
    TResult Function()? redirectOn404,
    required TResult orElse(),
  }) {
    if (redirectOn404 != null) {
      return redirectOn404();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_StreamCall value) streamCall,
    required TResult Function(_RedirectOn404 value) redirectOn404,
  }) {
    return redirectOn404(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_StreamCall value)? streamCall,
    TResult? Function(_RedirectOn404 value)? redirectOn404,
  }) {
    return redirectOn404?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_StreamCall value)? streamCall,
    TResult Function(_RedirectOn404 value)? redirectOn404,
    required TResult orElse(),
  }) {
    if (redirectOn404 != null) {
      return redirectOn404(this);
    }
    return orElse();
  }
}

abstract class _RedirectOn404 implements EstablishmentEvent {
  const factory _RedirectOn404() = _$_RedirectOn404;
}

/// @nodoc
mixin _$EstablishmentState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(EstablishmentDto establishment) hasData,
    required TResult Function(GlobalFailure<dynamic> failure) isError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(EstablishmentDto establishment)? hasData,
    TResult? Function(GlobalFailure<dynamic> failure)? isError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(EstablishmentDto establishment)? hasData,
    TResult Function(GlobalFailure<dynamic> failure)? isError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) hasData,
    required TResult Function(_Error value) isError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? hasData,
    TResult? Function(_Error value)? isError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? hasData,
    TResult Function(_Error value)? isError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EstablishmentStateCopyWith<$Res> {
  factory $EstablishmentStateCopyWith(
          EstablishmentState value, $Res Function(EstablishmentState) then) =
      _$EstablishmentStateCopyWithImpl<$Res, EstablishmentState>;
}

/// @nodoc
class _$EstablishmentStateCopyWithImpl<$Res, $Val extends EstablishmentState>
    implements $EstablishmentStateCopyWith<$Res> {
  _$EstablishmentStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res>
    extends _$EstablishmentStateCopyWithImpl<$Res, _$_Initial>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Initial extends _Initial {
  const _$_Initial() : super._();

  @override
  String toString() {
    return 'EstablishmentState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(EstablishmentDto establishment) hasData,
    required TResult Function(GlobalFailure<dynamic> failure) isError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(EstablishmentDto establishment)? hasData,
    TResult? Function(GlobalFailure<dynamic> failure)? isError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(EstablishmentDto establishment)? hasData,
    TResult Function(GlobalFailure<dynamic> failure)? isError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) hasData,
    required TResult Function(_Error value) isError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? hasData,
    TResult? Function(_Error value)? isError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? hasData,
    TResult Function(_Error value)? isError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial extends EstablishmentState {
  const factory _Initial() = _$_Initial;
  const _Initial._() : super._();
}

/// @nodoc
abstract class _$$_DataCopyWith<$Res> {
  factory _$$_DataCopyWith(_$_Data value, $Res Function(_$_Data) then) =
      __$$_DataCopyWithImpl<$Res>;
  @useResult
  $Res call({EstablishmentDto establishment});

  $EstablishmentDtoCopyWith<$Res> get establishment;
}

/// @nodoc
class __$$_DataCopyWithImpl<$Res>
    extends _$EstablishmentStateCopyWithImpl<$Res, _$_Data>
    implements _$$_DataCopyWith<$Res> {
  __$$_DataCopyWithImpl(_$_Data _value, $Res Function(_$_Data) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? establishment = null,
  }) {
    return _then(_$_Data(
      null == establishment
          ? _value.establishment
          : establishment // ignore: cast_nullable_to_non_nullable
              as EstablishmentDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EstablishmentDtoCopyWith<$Res> get establishment {
    return $EstablishmentDtoCopyWith<$Res>(_value.establishment, (value) {
      return _then(_value.copyWith(establishment: value));
    });
  }
}

/// @nodoc

class _$_Data extends _Data {
  const _$_Data(this.establishment) : super._();

  @override
  final EstablishmentDto establishment;

  @override
  String toString() {
    return 'EstablishmentState.hasData(establishment: $establishment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Data &&
            (identical(other.establishment, establishment) ||
                other.establishment == establishment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, establishment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DataCopyWith<_$_Data> get copyWith =>
      __$$_DataCopyWithImpl<_$_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(EstablishmentDto establishment) hasData,
    required TResult Function(GlobalFailure<dynamic> failure) isError,
  }) {
    return hasData(establishment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(EstablishmentDto establishment)? hasData,
    TResult? Function(GlobalFailure<dynamic> failure)? isError,
  }) {
    return hasData?.call(establishment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(EstablishmentDto establishment)? hasData,
    TResult Function(GlobalFailure<dynamic> failure)? isError,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(establishment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) hasData,
    required TResult Function(_Error value) isError,
  }) {
    return hasData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? hasData,
    TResult? Function(_Error value)? isError,
  }) {
    return hasData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? hasData,
    TResult Function(_Error value)? isError,
    required TResult orElse(),
  }) {
    if (hasData != null) {
      return hasData(this);
    }
    return orElse();
  }
}

abstract class _Data extends EstablishmentState {
  const factory _Data(final EstablishmentDto establishment) = _$_Data;
  const _Data._() : super._();

  EstablishmentDto get establishment;
  @JsonKey(ignore: true)
  _$$_DataCopyWith<_$_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ErrorCopyWith<$Res> {
  factory _$$_ErrorCopyWith(_$_Error value, $Res Function(_$_Error) then) =
      __$$_ErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({GlobalFailure<dynamic> failure});

  $GlobalFailureCopyWith<dynamic, $Res> get failure;
}

/// @nodoc
class __$$_ErrorCopyWithImpl<$Res>
    extends _$EstablishmentStateCopyWithImpl<$Res, _$_Error>
    implements _$$_ErrorCopyWith<$Res> {
  __$$_ErrorCopyWithImpl(_$_Error _value, $Res Function(_$_Error) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? failure = null,
  }) {
    return _then(_$_Error(
      null == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as GlobalFailure<dynamic>,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $GlobalFailureCopyWith<dynamic, $Res> get failure {
    return $GlobalFailureCopyWith<dynamic, $Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_Error extends _Error {
  const _$_Error(this.failure) : super._();

  @override
  final GlobalFailure<dynamic> failure;

  @override
  String toString() {
    return 'EstablishmentState.isError(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Error &&
            (identical(other.failure, failure) || other.failure == failure));
  }

  @override
  int get hashCode => Object.hash(runtimeType, failure);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      __$$_ErrorCopyWithImpl<_$_Error>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(EstablishmentDto establishment) hasData,
    required TResult Function(GlobalFailure<dynamic> failure) isError,
  }) {
    return isError(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function(EstablishmentDto establishment)? hasData,
    TResult? Function(GlobalFailure<dynamic> failure)? isError,
  }) {
    return isError?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(EstablishmentDto establishment)? hasData,
    TResult Function(GlobalFailure<dynamic> failure)? isError,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Data value) hasData,
    required TResult Function(_Error value) isError,
  }) {
    return isError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Data value)? hasData,
    TResult? Function(_Error value)? isError,
  }) {
    return isError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Data value)? hasData,
    TResult Function(_Error value)? isError,
    required TResult orElse(),
  }) {
    if (isError != null) {
      return isError(this);
    }
    return orElse();
  }
}

abstract class _Error extends EstablishmentState {
  const factory _Error(final GlobalFailure<dynamic> failure) = _$_Error;
  const _Error._() : super._();

  GlobalFailure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
