// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'order_summary_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OrderSummaryEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String whatsappNumber) sendOrder,
    required TResult Function(String whatsappNumber) askAboutOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String whatsappNumber)? sendOrder,
    TResult? Function(String whatsappNumber)? askAboutOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String whatsappNumber)? sendOrder,
    TResult Function(String whatsappNumber)? askAboutOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_AskAboutOrder value) askAboutOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_AskAboutOrder value)? askAboutOrder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_AskAboutOrder value)? askAboutOrder,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSummaryEventCopyWith<$Res> {
  factory $OrderSummaryEventCopyWith(
          OrderSummaryEvent value, $Res Function(OrderSummaryEvent) then) =
      _$OrderSummaryEventCopyWithImpl<$Res, OrderSummaryEvent>;
}

/// @nodoc
class _$OrderSummaryEventCopyWithImpl<$Res, $Val extends OrderSummaryEvent>
    implements $OrderSummaryEventCopyWith<$Res> {
  _$OrderSummaryEventCopyWithImpl(this._value, this._then);

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
    extends _$OrderSummaryEventCopyWithImpl<$Res, _$_Started>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'OrderSummaryEvent.started()';
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
    required TResult Function(String whatsappNumber) sendOrder,
    required TResult Function(String whatsappNumber) askAboutOrder,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String whatsappNumber)? sendOrder,
    TResult? Function(String whatsappNumber)? askAboutOrder,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String whatsappNumber)? sendOrder,
    TResult Function(String whatsappNumber)? askAboutOrder,
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
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_AskAboutOrder value) askAboutOrder,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_AskAboutOrder value)? askAboutOrder,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_AskAboutOrder value)? askAboutOrder,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OrderSummaryEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_SendOrderCopyWith<$Res> {
  factory _$$_SendOrderCopyWith(
          _$_SendOrder value, $Res Function(_$_SendOrder) then) =
      __$$_SendOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({String whatsappNumber});
}

/// @nodoc
class __$$_SendOrderCopyWithImpl<$Res>
    extends _$OrderSummaryEventCopyWithImpl<$Res, _$_SendOrder>
    implements _$$_SendOrderCopyWith<$Res> {
  __$$_SendOrderCopyWithImpl(
      _$_SendOrder _value, $Res Function(_$_SendOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whatsappNumber = null,
  }) {
    return _then(_$_SendOrder(
      null == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SendOrder implements _SendOrder {
  const _$_SendOrder(this.whatsappNumber);

  @override
  final String whatsappNumber;

  @override
  String toString() {
    return 'OrderSummaryEvent.sendOrder(whatsappNumber: $whatsappNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendOrder &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, whatsappNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendOrderCopyWith<_$_SendOrder> get copyWith =>
      __$$_SendOrderCopyWithImpl<_$_SendOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String whatsappNumber) sendOrder,
    required TResult Function(String whatsappNumber) askAboutOrder,
  }) {
    return sendOrder(whatsappNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String whatsappNumber)? sendOrder,
    TResult? Function(String whatsappNumber)? askAboutOrder,
  }) {
    return sendOrder?.call(whatsappNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String whatsappNumber)? sendOrder,
    TResult Function(String whatsappNumber)? askAboutOrder,
    required TResult orElse(),
  }) {
    if (sendOrder != null) {
      return sendOrder(whatsappNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_AskAboutOrder value) askAboutOrder,
  }) {
    return sendOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_AskAboutOrder value)? askAboutOrder,
  }) {
    return sendOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_AskAboutOrder value)? askAboutOrder,
    required TResult orElse(),
  }) {
    if (sendOrder != null) {
      return sendOrder(this);
    }
    return orElse();
  }
}

abstract class _SendOrder implements OrderSummaryEvent {
  const factory _SendOrder(final String whatsappNumber) = _$_SendOrder;

  String get whatsappNumber;
  @JsonKey(ignore: true)
  _$$_SendOrderCopyWith<_$_SendOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AskAboutOrderCopyWith<$Res> {
  factory _$$_AskAboutOrderCopyWith(
          _$_AskAboutOrder value, $Res Function(_$_AskAboutOrder) then) =
      __$$_AskAboutOrderCopyWithImpl<$Res>;
  @useResult
  $Res call({String whatsappNumber});
}

/// @nodoc
class __$$_AskAboutOrderCopyWithImpl<$Res>
    extends _$OrderSummaryEventCopyWithImpl<$Res, _$_AskAboutOrder>
    implements _$$_AskAboutOrderCopyWith<$Res> {
  __$$_AskAboutOrderCopyWithImpl(
      _$_AskAboutOrder _value, $Res Function(_$_AskAboutOrder) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? whatsappNumber = null,
  }) {
    return _then(_$_AskAboutOrder(
      null == whatsappNumber
          ? _value.whatsappNumber
          : whatsappNumber // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_AskAboutOrder implements _AskAboutOrder {
  const _$_AskAboutOrder(this.whatsappNumber);

  @override
  final String whatsappNumber;

  @override
  String toString() {
    return 'OrderSummaryEvent.askAboutOrder(whatsappNumber: $whatsappNumber)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AskAboutOrder &&
            (identical(other.whatsappNumber, whatsappNumber) ||
                other.whatsappNumber == whatsappNumber));
  }

  @override
  int get hashCode => Object.hash(runtimeType, whatsappNumber);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AskAboutOrderCopyWith<_$_AskAboutOrder> get copyWith =>
      __$$_AskAboutOrderCopyWithImpl<_$_AskAboutOrder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(String whatsappNumber) sendOrder,
    required TResult Function(String whatsappNumber) askAboutOrder,
  }) {
    return askAboutOrder(whatsappNumber);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? started,
    TResult? Function(String whatsappNumber)? sendOrder,
    TResult? Function(String whatsappNumber)? askAboutOrder,
  }) {
    return askAboutOrder?.call(whatsappNumber);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(String whatsappNumber)? sendOrder,
    TResult Function(String whatsappNumber)? askAboutOrder,
    required TResult orElse(),
  }) {
    if (askAboutOrder != null) {
      return askAboutOrder(whatsappNumber);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_SendOrder value) sendOrder,
    required TResult Function(_AskAboutOrder value) askAboutOrder,
  }) {
    return askAboutOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_SendOrder value)? sendOrder,
    TResult? Function(_AskAboutOrder value)? askAboutOrder,
  }) {
    return askAboutOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_SendOrder value)? sendOrder,
    TResult Function(_AskAboutOrder value)? askAboutOrder,
    required TResult orElse(),
  }) {
    if (askAboutOrder != null) {
      return askAboutOrder(this);
    }
    return orElse();
  }
}

abstract class _AskAboutOrder implements OrderSummaryEvent {
  const factory _AskAboutOrder(final String whatsappNumber) = _$_AskAboutOrder;

  String get whatsappNumber;
  @JsonKey(ignore: true)
  _$$_AskAboutOrderCopyWith<_$_AskAboutOrder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OrderSummaryState {
  StatusLoad get statusLoad => throw _privateConstructorUsedError;
  Option<bool> get statusSend => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OrderSummaryStateCopyWith<OrderSummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OrderSummaryStateCopyWith<$Res> {
  factory $OrderSummaryStateCopyWith(
          OrderSummaryState value, $Res Function(OrderSummaryState) then) =
      _$OrderSummaryStateCopyWithImpl<$Res, OrderSummaryState>;
  @useResult
  $Res call({StatusLoad statusLoad, Option<bool> statusSend});

  $StatusLoadCopyWith<$Res> get statusLoad;
}

/// @nodoc
class _$OrderSummaryStateCopyWithImpl<$Res, $Val extends OrderSummaryState>
    implements $OrderSummaryStateCopyWith<$Res> {
  _$OrderSummaryStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusLoad = null,
    Object? statusSend = null,
  }) {
    return _then(_value.copyWith(
      statusLoad: null == statusLoad
          ? _value.statusLoad
          : statusLoad // ignore: cast_nullable_to_non_nullable
              as StatusLoad,
      statusSend: null == statusSend
          ? _value.statusSend
          : statusSend // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $StatusLoadCopyWith<$Res> get statusLoad {
    return $StatusLoadCopyWith<$Res>(_value.statusLoad, (value) {
      return _then(_value.copyWith(statusLoad: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_OrderSummaryStateCopyWith<$Res>
    implements $OrderSummaryStateCopyWith<$Res> {
  factory _$$_OrderSummaryStateCopyWith(_$_OrderSummaryState value,
          $Res Function(_$_OrderSummaryState) then) =
      __$$_OrderSummaryStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({StatusLoad statusLoad, Option<bool> statusSend});

  @override
  $StatusLoadCopyWith<$Res> get statusLoad;
}

/// @nodoc
class __$$_OrderSummaryStateCopyWithImpl<$Res>
    extends _$OrderSummaryStateCopyWithImpl<$Res, _$_OrderSummaryState>
    implements _$$_OrderSummaryStateCopyWith<$Res> {
  __$$_OrderSummaryStateCopyWithImpl(
      _$_OrderSummaryState _value, $Res Function(_$_OrderSummaryState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? statusLoad = null,
    Object? statusSend = null,
  }) {
    return _then(_$_OrderSummaryState(
      statusLoad: null == statusLoad
          ? _value.statusLoad
          : statusLoad // ignore: cast_nullable_to_non_nullable
              as StatusLoad,
      statusSend: null == statusSend
          ? _value.statusSend
          : statusSend // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
    ));
  }
}

/// @nodoc

class _$_OrderSummaryState implements _OrderSummaryState {
  const _$_OrderSummaryState(
      {required this.statusLoad, required this.statusSend});

  @override
  final StatusLoad statusLoad;
  @override
  final Option<bool> statusSend;

  @override
  String toString() {
    return 'OrderSummaryState(statusLoad: $statusLoad, statusSend: $statusSend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OrderSummaryState &&
            (identical(other.statusLoad, statusLoad) ||
                other.statusLoad == statusLoad) &&
            (identical(other.statusSend, statusSend) ||
                other.statusSend == statusSend));
  }

  @override
  int get hashCode => Object.hash(runtimeType, statusLoad, statusSend);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OrderSummaryStateCopyWith<_$_OrderSummaryState> get copyWith =>
      __$$_OrderSummaryStateCopyWithImpl<_$_OrderSummaryState>(
          this, _$identity);
}

abstract class _OrderSummaryState implements OrderSummaryState {
  const factory _OrderSummaryState(
      {required final StatusLoad statusLoad,
      required final Option<bool> statusSend}) = _$_OrderSummaryState;

  @override
  StatusLoad get statusLoad;
  @override
  Option<bool> get statusSend;
  @override
  @JsonKey(ignore: true)
  _$$_OrderSummaryStateCopyWith<_$_OrderSummaryState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$StatusLoad {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SummaryDto summary) data,
    required TResult Function(GlobalFailure<dynamic> failure) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SummaryDto summary)? data,
    TResult? Function(GlobalFailure<dynamic> failure)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SummaryDto summary)? data,
    TResult Function(GlobalFailure<dynamic> failure)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) data,
    required TResult Function(_Error value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? data,
    TResult? Function(_Error value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatusLoadCopyWith<$Res> {
  factory $StatusLoadCopyWith(
          StatusLoad value, $Res Function(StatusLoad) then) =
      _$StatusLoadCopyWithImpl<$Res, StatusLoad>;
}

/// @nodoc
class _$StatusLoadCopyWithImpl<$Res, $Val extends StatusLoad>
    implements $StatusLoadCopyWith<$Res> {
  _$StatusLoadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res>
    extends _$StatusLoadCopyWithImpl<$Res, _$_Loading>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Loading extends _Loading {
  const _$_Loading() : super._();

  @override
  String toString() {
    return 'StatusLoad.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SummaryDto summary) data,
    required TResult Function(GlobalFailure<dynamic> failure) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SummaryDto summary)? data,
    TResult? Function(GlobalFailure<dynamic> failure)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SummaryDto summary)? data,
    TResult Function(GlobalFailure<dynamic> failure)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) data,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? data,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading extends StatusLoad {
  const factory _Loading() = _$_Loading;
  const _Loading._() : super._();
}

/// @nodoc
abstract class _$$_HasDataCopyWith<$Res> {
  factory _$$_HasDataCopyWith(
          _$_HasData value, $Res Function(_$_HasData) then) =
      __$$_HasDataCopyWithImpl<$Res>;
  @useResult
  $Res call({SummaryDto summary});

  $SummaryDtoCopyWith<$Res> get summary;
}

/// @nodoc
class __$$_HasDataCopyWithImpl<$Res>
    extends _$StatusLoadCopyWithImpl<$Res, _$_HasData>
    implements _$$_HasDataCopyWith<$Res> {
  __$$_HasDataCopyWithImpl(_$_HasData _value, $Res Function(_$_HasData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? summary = null,
  }) {
    return _then(_$_HasData(
      null == summary
          ? _value.summary
          : summary // ignore: cast_nullable_to_non_nullable
              as SummaryDto,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $SummaryDtoCopyWith<$Res> get summary {
    return $SummaryDtoCopyWith<$Res>(_value.summary, (value) {
      return _then(_value.copyWith(summary: value));
    });
  }
}

/// @nodoc

class _$_HasData extends _HasData {
  const _$_HasData(this.summary) : super._();

  @override
  final SummaryDto summary;

  @override
  String toString() {
    return 'StatusLoad.data(summary: $summary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HasData &&
            (identical(other.summary, summary) || other.summary == summary));
  }

  @override
  int get hashCode => Object.hash(runtimeType, summary);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HasDataCopyWith<_$_HasData> get copyWith =>
      __$$_HasDataCopyWithImpl<_$_HasData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() loading,
    required TResult Function(SummaryDto summary) data,
    required TResult Function(GlobalFailure<dynamic> failure) error,
  }) {
    return data(summary);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SummaryDto summary)? data,
    TResult? Function(GlobalFailure<dynamic> failure)? error,
  }) {
    return data?.call(summary);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SummaryDto summary)? data,
    TResult Function(GlobalFailure<dynamic> failure)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(summary);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) data,
    required TResult Function(_Error value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? data,
    TResult? Function(_Error value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _HasData extends StatusLoad {
  const factory _HasData(final SummaryDto summary) = _$_HasData;
  const _HasData._() : super._();

  SummaryDto get summary;
  @JsonKey(ignore: true)
  _$$_HasDataCopyWith<_$_HasData> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$StatusLoadCopyWithImpl<$Res, _$_Error>
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
    return 'StatusLoad.error(failure: $failure)';
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
    required TResult Function() loading,
    required TResult Function(SummaryDto summary) data,
    required TResult Function(GlobalFailure<dynamic> failure) error,
  }) {
    return error(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? loading,
    TResult? Function(SummaryDto summary)? data,
    TResult? Function(GlobalFailure<dynamic> failure)? error,
  }) {
    return error?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? loading,
    TResult Function(SummaryDto summary)? data,
    TResult Function(GlobalFailure<dynamic> failure)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Loading value) loading,
    required TResult Function(_HasData value) data,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Loading value)? loading,
    TResult? Function(_HasData value)? data,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Loading value)? loading,
    TResult Function(_HasData value)? data,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error extends StatusLoad {
  const factory _Error(final GlobalFailure<dynamic> failure) = _$_Error;
  const _Error._() : super._();

  GlobalFailure<dynamic> get failure;
  @JsonKey(ignore: true)
  _$$_ErrorCopyWith<_$_Error> get copyWith =>
      throw _privateConstructorUsedError;
}
