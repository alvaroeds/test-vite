// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'payment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Payment _$PaymentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'CASH':
      return Cash.fromJson(json);
    case 'DEBIT_CARD':
      return DebitCard.fromJson(json);
    case 'CREDIT_CARD':
      return CreditCard.fromJson(json);
    case 'BANK_TRANSFER':
      return BankTransfer.fromJson(json);
    case 'newMethod':
      return NewMethod.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Payment',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Payment {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cash,
    required TResult Function() debitCard,
    required TResult Function() creditCard,
    required TResult Function() bankTransfer,
    required TResult Function(String method) newMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cash,
    TResult? Function()? debitCard,
    TResult? Function()? creditCard,
    TResult? Function()? bankTransfer,
    TResult? Function(String method)? newMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cash,
    TResult Function()? debitCard,
    TResult Function()? creditCard,
    TResult Function()? bankTransfer,
    TResult Function(String method)? newMethod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cash value) cash,
    required TResult Function(DebitCard value) debitCard,
    required TResult Function(CreditCard value) creditCard,
    required TResult Function(BankTransfer value) bankTransfer,
    required TResult Function(NewMethod value) newMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cash value)? cash,
    TResult? Function(DebitCard value)? debitCard,
    TResult? Function(CreditCard value)? creditCard,
    TResult? Function(BankTransfer value)? bankTransfer,
    TResult? Function(NewMethod value)? newMethod,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cash value)? cash,
    TResult Function(DebitCard value)? debitCard,
    TResult Function(CreditCard value)? creditCard,
    TResult Function(BankTransfer value)? bankTransfer,
    TResult Function(NewMethod value)? newMethod,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentCopyWith<$Res> {
  factory $PaymentCopyWith(Payment value, $Res Function(Payment) then) =
      _$PaymentCopyWithImpl<$Res, Payment>;
}

/// @nodoc
class _$PaymentCopyWithImpl<$Res, $Val extends Payment>
    implements $PaymentCopyWith<$Res> {
  _$PaymentCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CashCopyWith<$Res> {
  factory _$$CashCopyWith(_$Cash value, $Res Function(_$Cash) then) =
      __$$CashCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CashCopyWithImpl<$Res> extends _$PaymentCopyWithImpl<$Res, _$Cash>
    implements _$$CashCopyWith<$Res> {
  __$$CashCopyWithImpl(_$Cash _value, $Res Function(_$Cash) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$Cash extends Cash {
  const _$Cash({final String? $type})
      : $type = $type ?? 'CASH',
        super._();

  factory _$Cash.fromJson(Map<String, dynamic> json) => _$$CashFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Payment.cash()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Cash);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cash,
    required TResult Function() debitCard,
    required TResult Function() creditCard,
    required TResult Function() bankTransfer,
    required TResult Function(String method) newMethod,
  }) {
    return cash();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cash,
    TResult? Function()? debitCard,
    TResult? Function()? creditCard,
    TResult? Function()? bankTransfer,
    TResult? Function(String method)? newMethod,
  }) {
    return cash?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cash,
    TResult Function()? debitCard,
    TResult Function()? creditCard,
    TResult Function()? bankTransfer,
    TResult Function(String method)? newMethod,
    required TResult orElse(),
  }) {
    if (cash != null) {
      return cash();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cash value) cash,
    required TResult Function(DebitCard value) debitCard,
    required TResult Function(CreditCard value) creditCard,
    required TResult Function(BankTransfer value) bankTransfer,
    required TResult Function(NewMethod value) newMethod,
  }) {
    return cash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cash value)? cash,
    TResult? Function(DebitCard value)? debitCard,
    TResult? Function(CreditCard value)? creditCard,
    TResult? Function(BankTransfer value)? bankTransfer,
    TResult? Function(NewMethod value)? newMethod,
  }) {
    return cash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cash value)? cash,
    TResult Function(DebitCard value)? debitCard,
    TResult Function(CreditCard value)? creditCard,
    TResult Function(BankTransfer value)? bankTransfer,
    TResult Function(NewMethod value)? newMethod,
    required TResult orElse(),
  }) {
    if (cash != null) {
      return cash(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CashToJson(
      this,
    );
  }
}

abstract class Cash extends Payment {
  const factory Cash() = _$Cash;
  const Cash._() : super._();

  factory Cash.fromJson(Map<String, dynamic> json) = _$Cash.fromJson;
}

/// @nodoc
abstract class _$$DebitCardCopyWith<$Res> {
  factory _$$DebitCardCopyWith(
          _$DebitCard value, $Res Function(_$DebitCard) then) =
      __$$DebitCardCopyWithImpl<$Res>;
}

/// @nodoc
class __$$DebitCardCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$DebitCard>
    implements _$$DebitCardCopyWith<$Res> {
  __$$DebitCardCopyWithImpl(
      _$DebitCard _value, $Res Function(_$DebitCard) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$DebitCard extends DebitCard {
  const _$DebitCard({final String? $type})
      : $type = $type ?? 'DEBIT_CARD',
        super._();

  factory _$DebitCard.fromJson(Map<String, dynamic> json) =>
      _$$DebitCardFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Payment.debitCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$DebitCard);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cash,
    required TResult Function() debitCard,
    required TResult Function() creditCard,
    required TResult Function() bankTransfer,
    required TResult Function(String method) newMethod,
  }) {
    return debitCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cash,
    TResult? Function()? debitCard,
    TResult? Function()? creditCard,
    TResult? Function()? bankTransfer,
    TResult? Function(String method)? newMethod,
  }) {
    return debitCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cash,
    TResult Function()? debitCard,
    TResult Function()? creditCard,
    TResult Function()? bankTransfer,
    TResult Function(String method)? newMethod,
    required TResult orElse(),
  }) {
    if (debitCard != null) {
      return debitCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cash value) cash,
    required TResult Function(DebitCard value) debitCard,
    required TResult Function(CreditCard value) creditCard,
    required TResult Function(BankTransfer value) bankTransfer,
    required TResult Function(NewMethod value) newMethod,
  }) {
    return debitCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cash value)? cash,
    TResult? Function(DebitCard value)? debitCard,
    TResult? Function(CreditCard value)? creditCard,
    TResult? Function(BankTransfer value)? bankTransfer,
    TResult? Function(NewMethod value)? newMethod,
  }) {
    return debitCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cash value)? cash,
    TResult Function(DebitCard value)? debitCard,
    TResult Function(CreditCard value)? creditCard,
    TResult Function(BankTransfer value)? bankTransfer,
    TResult Function(NewMethod value)? newMethod,
    required TResult orElse(),
  }) {
    if (debitCard != null) {
      return debitCard(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$DebitCardToJson(
      this,
    );
  }
}

abstract class DebitCard extends Payment {
  const factory DebitCard() = _$DebitCard;
  const DebitCard._() : super._();

  factory DebitCard.fromJson(Map<String, dynamic> json) = _$DebitCard.fromJson;
}

/// @nodoc
abstract class _$$CreditCardCopyWith<$Res> {
  factory _$$CreditCardCopyWith(
          _$CreditCard value, $Res Function(_$CreditCard) then) =
      __$$CreditCardCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CreditCardCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$CreditCard>
    implements _$$CreditCardCopyWith<$Res> {
  __$$CreditCardCopyWithImpl(
      _$CreditCard _value, $Res Function(_$CreditCard) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$CreditCard extends CreditCard {
  const _$CreditCard({final String? $type})
      : $type = $type ?? 'CREDIT_CARD',
        super._();

  factory _$CreditCard.fromJson(Map<String, dynamic> json) =>
      _$$CreditCardFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Payment.creditCard()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CreditCard);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cash,
    required TResult Function() debitCard,
    required TResult Function() creditCard,
    required TResult Function() bankTransfer,
    required TResult Function(String method) newMethod,
  }) {
    return creditCard();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cash,
    TResult? Function()? debitCard,
    TResult? Function()? creditCard,
    TResult? Function()? bankTransfer,
    TResult? Function(String method)? newMethod,
  }) {
    return creditCard?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cash,
    TResult Function()? debitCard,
    TResult Function()? creditCard,
    TResult Function()? bankTransfer,
    TResult Function(String method)? newMethod,
    required TResult orElse(),
  }) {
    if (creditCard != null) {
      return creditCard();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cash value) cash,
    required TResult Function(DebitCard value) debitCard,
    required TResult Function(CreditCard value) creditCard,
    required TResult Function(BankTransfer value) bankTransfer,
    required TResult Function(NewMethod value) newMethod,
  }) {
    return creditCard(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cash value)? cash,
    TResult? Function(DebitCard value)? debitCard,
    TResult? Function(CreditCard value)? creditCard,
    TResult? Function(BankTransfer value)? bankTransfer,
    TResult? Function(NewMethod value)? newMethod,
  }) {
    return creditCard?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cash value)? cash,
    TResult Function(DebitCard value)? debitCard,
    TResult Function(CreditCard value)? creditCard,
    TResult Function(BankTransfer value)? bankTransfer,
    TResult Function(NewMethod value)? newMethod,
    required TResult orElse(),
  }) {
    if (creditCard != null) {
      return creditCard(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CreditCardToJson(
      this,
    );
  }
}

abstract class CreditCard extends Payment {
  const factory CreditCard() = _$CreditCard;
  const CreditCard._() : super._();

  factory CreditCard.fromJson(Map<String, dynamic> json) =
      _$CreditCard.fromJson;
}

/// @nodoc
abstract class _$$BankTransferCopyWith<$Res> {
  factory _$$BankTransferCopyWith(
          _$BankTransfer value, $Res Function(_$BankTransfer) then) =
      __$$BankTransferCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BankTransferCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$BankTransfer>
    implements _$$BankTransferCopyWith<$Res> {
  __$$BankTransferCopyWithImpl(
      _$BankTransfer _value, $Res Function(_$BankTransfer) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$BankTransfer extends BankTransfer {
  const _$BankTransfer({final String? $type})
      : $type = $type ?? 'BANK_TRANSFER',
        super._();

  factory _$BankTransfer.fromJson(Map<String, dynamic> json) =>
      _$$BankTransferFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Payment.bankTransfer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BankTransfer);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cash,
    required TResult Function() debitCard,
    required TResult Function() creditCard,
    required TResult Function() bankTransfer,
    required TResult Function(String method) newMethod,
  }) {
    return bankTransfer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cash,
    TResult? Function()? debitCard,
    TResult? Function()? creditCard,
    TResult? Function()? bankTransfer,
    TResult? Function(String method)? newMethod,
  }) {
    return bankTransfer?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cash,
    TResult Function()? debitCard,
    TResult Function()? creditCard,
    TResult Function()? bankTransfer,
    TResult Function(String method)? newMethod,
    required TResult orElse(),
  }) {
    if (bankTransfer != null) {
      return bankTransfer();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cash value) cash,
    required TResult Function(DebitCard value) debitCard,
    required TResult Function(CreditCard value) creditCard,
    required TResult Function(BankTransfer value) bankTransfer,
    required TResult Function(NewMethod value) newMethod,
  }) {
    return bankTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cash value)? cash,
    TResult? Function(DebitCard value)? debitCard,
    TResult? Function(CreditCard value)? creditCard,
    TResult? Function(BankTransfer value)? bankTransfer,
    TResult? Function(NewMethod value)? newMethod,
  }) {
    return bankTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cash value)? cash,
    TResult Function(DebitCard value)? debitCard,
    TResult Function(CreditCard value)? creditCard,
    TResult Function(BankTransfer value)? bankTransfer,
    TResult Function(NewMethod value)? newMethod,
    required TResult orElse(),
  }) {
    if (bankTransfer != null) {
      return bankTransfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$BankTransferToJson(
      this,
    );
  }
}

abstract class BankTransfer extends Payment {
  const factory BankTransfer() = _$BankTransfer;
  const BankTransfer._() : super._();

  factory BankTransfer.fromJson(Map<String, dynamic> json) =
      _$BankTransfer.fromJson;
}

/// @nodoc
abstract class _$$NewMethodCopyWith<$Res> {
  factory _$$NewMethodCopyWith(
          _$NewMethod value, $Res Function(_$NewMethod) then) =
      __$$NewMethodCopyWithImpl<$Res>;
  @useResult
  $Res call({String method});
}

/// @nodoc
class __$$NewMethodCopyWithImpl<$Res>
    extends _$PaymentCopyWithImpl<$Res, _$NewMethod>
    implements _$$NewMethodCopyWith<$Res> {
  __$$NewMethodCopyWithImpl(
      _$NewMethod _value, $Res Function(_$NewMethod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
  }) {
    return _then(_$NewMethod(
      null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewMethod extends NewMethod {
  const _$NewMethod(this.method, {final String? $type})
      : $type = $type ?? 'newMethod',
        super._();

  factory _$NewMethod.fromJson(Map<String, dynamic> json) =>
      _$$NewMethodFromJson(json);

  @override
  final String method;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Payment.newMethod(method: $method)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewMethod &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, method);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewMethodCopyWith<_$NewMethod> get copyWith =>
      __$$NewMethodCopyWithImpl<_$NewMethod>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() cash,
    required TResult Function() debitCard,
    required TResult Function() creditCard,
    required TResult Function() bankTransfer,
    required TResult Function(String method) newMethod,
  }) {
    return newMethod(method);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? cash,
    TResult? Function()? debitCard,
    TResult? Function()? creditCard,
    TResult? Function()? bankTransfer,
    TResult? Function(String method)? newMethod,
  }) {
    return newMethod?.call(method);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? cash,
    TResult Function()? debitCard,
    TResult Function()? creditCard,
    TResult Function()? bankTransfer,
    TResult Function(String method)? newMethod,
    required TResult orElse(),
  }) {
    if (newMethod != null) {
      return newMethod(method);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Cash value) cash,
    required TResult Function(DebitCard value) debitCard,
    required TResult Function(CreditCard value) creditCard,
    required TResult Function(BankTransfer value) bankTransfer,
    required TResult Function(NewMethod value) newMethod,
  }) {
    return newMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Cash value)? cash,
    TResult? Function(DebitCard value)? debitCard,
    TResult? Function(CreditCard value)? creditCard,
    TResult? Function(BankTransfer value)? bankTransfer,
    TResult? Function(NewMethod value)? newMethod,
  }) {
    return newMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Cash value)? cash,
    TResult Function(DebitCard value)? debitCard,
    TResult Function(CreditCard value)? creditCard,
    TResult Function(BankTransfer value)? bankTransfer,
    TResult Function(NewMethod value)? newMethod,
    required TResult orElse(),
  }) {
    if (newMethod != null) {
      return newMethod(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NewMethodToJson(
      this,
    );
  }
}

abstract class NewMethod extends Payment {
  const factory NewMethod(final String method) = _$NewMethod;
  const NewMethod._() : super._();

  factory NewMethod.fromJson(Map<String, dynamic> json) = _$NewMethod.fromJson;

  String get method;
  @JsonKey(ignore: true)
  _$$NewMethodCopyWith<_$NewMethod> get copyWith =>
      throw _privateConstructorUsedError;
}
