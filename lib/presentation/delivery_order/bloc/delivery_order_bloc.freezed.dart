// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delivery_order_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$DeliveryOrderEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactName) updateName,
    required TResult Function(String contactPhone) updatePhone,
    required TResult Function(String additionalDetail) updateAdditionalDetail,
    required TResult Function(AddressDto? address) updateAddress,
    required TResult Function(Service service) updateService,
    required TResult Function() createOrder,
    required TResult Function() closeSelectable,
    required TResult Function() changeSelectable,
    required TResult Function(Payment payment, String namePayment)
        updatePaymentMethod,
    required TResult Function(String cash) updateCash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactName)? updateName,
    TResult? Function(String contactPhone)? updatePhone,
    TResult? Function(String additionalDetail)? updateAdditionalDetail,
    TResult? Function(AddressDto? address)? updateAddress,
    TResult? Function(Service service)? updateService,
    TResult? Function()? createOrder,
    TResult? Function()? closeSelectable,
    TResult? Function()? changeSelectable,
    TResult? Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult? Function(String cash)? updateCash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactName)? updateName,
    TResult Function(String contactPhone)? updatePhone,
    TResult Function(String additionalDetail)? updateAdditionalDetail,
    TResult Function(AddressDto? address)? updateAddress,
    TResult Function(Service service)? updateService,
    TResult Function()? createOrder,
    TResult Function()? closeSelectable,
    TResult Function()? changeSelectable,
    TResult Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult Function(String cash)? updateCash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAdditionalDetail value)
        updateAdditionalDetail,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_CloseSelectable value) closeSelectable,
    required TResult Function(_ChangeSelectable value) changeSelectable,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateCash value) updateCash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_CloseSelectable value)? closeSelectable,
    TResult? Function(_ChangeSelectable value)? changeSelectable,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateCash value)? updateCash,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_CloseSelectable value)? closeSelectable,
    TResult Function(_ChangeSelectable value)? changeSelectable,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateCash value)? updateCash,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryOrderEventCopyWith<$Res> {
  factory $DeliveryOrderEventCopyWith(
          DeliveryOrderEvent value, $Res Function(DeliveryOrderEvent) then) =
      _$DeliveryOrderEventCopyWithImpl<$Res, DeliveryOrderEvent>;
}

/// @nodoc
class _$DeliveryOrderEventCopyWithImpl<$Res, $Val extends DeliveryOrderEvent>
    implements $DeliveryOrderEventCopyWith<$Res> {
  _$DeliveryOrderEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UpdateNameCopyWith<$Res> {
  factory _$$_UpdateNameCopyWith(
          _$_UpdateName value, $Res Function(_$_UpdateName) then) =
      __$$_UpdateNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String contactName});
}

/// @nodoc
class __$$_UpdateNameCopyWithImpl<$Res>
    extends _$DeliveryOrderEventCopyWithImpl<$Res, _$_UpdateName>
    implements _$$_UpdateNameCopyWith<$Res> {
  __$$_UpdateNameCopyWithImpl(
      _$_UpdateName _value, $Res Function(_$_UpdateName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactName = null,
  }) {
    return _then(_$_UpdateName(
      null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateName implements _UpdateName {
  const _$_UpdateName(this.contactName);

  @override
  final String contactName;

  @override
  String toString() {
    return 'DeliveryOrderEvent.updateName(contactName: $contactName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateName &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateNameCopyWith<_$_UpdateName> get copyWith =>
      __$$_UpdateNameCopyWithImpl<_$_UpdateName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactName) updateName,
    required TResult Function(String contactPhone) updatePhone,
    required TResult Function(String additionalDetail) updateAdditionalDetail,
    required TResult Function(AddressDto? address) updateAddress,
    required TResult Function(Service service) updateService,
    required TResult Function() createOrder,
    required TResult Function() closeSelectable,
    required TResult Function() changeSelectable,
    required TResult Function(Payment payment, String namePayment)
        updatePaymentMethod,
    required TResult Function(String cash) updateCash,
  }) {
    return updateName(contactName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactName)? updateName,
    TResult? Function(String contactPhone)? updatePhone,
    TResult? Function(String additionalDetail)? updateAdditionalDetail,
    TResult? Function(AddressDto? address)? updateAddress,
    TResult? Function(Service service)? updateService,
    TResult? Function()? createOrder,
    TResult? Function()? closeSelectable,
    TResult? Function()? changeSelectable,
    TResult? Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult? Function(String cash)? updateCash,
  }) {
    return updateName?.call(contactName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactName)? updateName,
    TResult Function(String contactPhone)? updatePhone,
    TResult Function(String additionalDetail)? updateAdditionalDetail,
    TResult Function(AddressDto? address)? updateAddress,
    TResult Function(Service service)? updateService,
    TResult Function()? createOrder,
    TResult Function()? closeSelectable,
    TResult Function()? changeSelectable,
    TResult Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult Function(String cash)? updateCash,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(contactName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAdditionalDetail value)
        updateAdditionalDetail,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_CloseSelectable value) closeSelectable,
    required TResult Function(_ChangeSelectable value) changeSelectable,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateCash value) updateCash,
  }) {
    return updateName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_CloseSelectable value)? closeSelectable,
    TResult? Function(_ChangeSelectable value)? changeSelectable,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateCash value)? updateCash,
  }) {
    return updateName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_CloseSelectable value)? closeSelectable,
    TResult Function(_ChangeSelectable value)? changeSelectable,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateCash value)? updateCash,
    required TResult orElse(),
  }) {
    if (updateName != null) {
      return updateName(this);
    }
    return orElse();
  }
}

abstract class _UpdateName implements DeliveryOrderEvent {
  const factory _UpdateName(final String contactName) = _$_UpdateName;

  String get contactName;
  @JsonKey(ignore: true)
  _$$_UpdateNameCopyWith<_$_UpdateName> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdatePhoneCopyWith<$Res> {
  factory _$$_UpdatePhoneCopyWith(
          _$_UpdatePhone value, $Res Function(_$_UpdatePhone) then) =
      __$$_UpdatePhoneCopyWithImpl<$Res>;
  @useResult
  $Res call({String contactPhone});
}

/// @nodoc
class __$$_UpdatePhoneCopyWithImpl<$Res>
    extends _$DeliveryOrderEventCopyWithImpl<$Res, _$_UpdatePhone>
    implements _$$_UpdatePhoneCopyWith<$Res> {
  __$$_UpdatePhoneCopyWithImpl(
      _$_UpdatePhone _value, $Res Function(_$_UpdatePhone) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contactPhone = null,
  }) {
    return _then(_$_UpdatePhone(
      null == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdatePhone implements _UpdatePhone {
  const _$_UpdatePhone(this.contactPhone);

  @override
  final String contactPhone;

  @override
  String toString() {
    return 'DeliveryOrderEvent.updatePhone(contactPhone: $contactPhone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePhone &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, contactPhone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePhoneCopyWith<_$_UpdatePhone> get copyWith =>
      __$$_UpdatePhoneCopyWithImpl<_$_UpdatePhone>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactName) updateName,
    required TResult Function(String contactPhone) updatePhone,
    required TResult Function(String additionalDetail) updateAdditionalDetail,
    required TResult Function(AddressDto? address) updateAddress,
    required TResult Function(Service service) updateService,
    required TResult Function() createOrder,
    required TResult Function() closeSelectable,
    required TResult Function() changeSelectable,
    required TResult Function(Payment payment, String namePayment)
        updatePaymentMethod,
    required TResult Function(String cash) updateCash,
  }) {
    return updatePhone(contactPhone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactName)? updateName,
    TResult? Function(String contactPhone)? updatePhone,
    TResult? Function(String additionalDetail)? updateAdditionalDetail,
    TResult? Function(AddressDto? address)? updateAddress,
    TResult? Function(Service service)? updateService,
    TResult? Function()? createOrder,
    TResult? Function()? closeSelectable,
    TResult? Function()? changeSelectable,
    TResult? Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult? Function(String cash)? updateCash,
  }) {
    return updatePhone?.call(contactPhone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactName)? updateName,
    TResult Function(String contactPhone)? updatePhone,
    TResult Function(String additionalDetail)? updateAdditionalDetail,
    TResult Function(AddressDto? address)? updateAddress,
    TResult Function(Service service)? updateService,
    TResult Function()? createOrder,
    TResult Function()? closeSelectable,
    TResult Function()? changeSelectable,
    TResult Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult Function(String cash)? updateCash,
    required TResult orElse(),
  }) {
    if (updatePhone != null) {
      return updatePhone(contactPhone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAdditionalDetail value)
        updateAdditionalDetail,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_CloseSelectable value) closeSelectable,
    required TResult Function(_ChangeSelectable value) changeSelectable,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateCash value) updateCash,
  }) {
    return updatePhone(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_CloseSelectable value)? closeSelectable,
    TResult? Function(_ChangeSelectable value)? changeSelectable,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateCash value)? updateCash,
  }) {
    return updatePhone?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_CloseSelectable value)? closeSelectable,
    TResult Function(_ChangeSelectable value)? changeSelectable,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateCash value)? updateCash,
    required TResult orElse(),
  }) {
    if (updatePhone != null) {
      return updatePhone(this);
    }
    return orElse();
  }
}

abstract class _UpdatePhone implements DeliveryOrderEvent {
  const factory _UpdatePhone(final String contactPhone) = _$_UpdatePhone;

  String get contactPhone;
  @JsonKey(ignore: true)
  _$$_UpdatePhoneCopyWith<_$_UpdatePhone> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateAdditionalDetailCopyWith<$Res> {
  factory _$$_UpdateAdditionalDetailCopyWith(_$_UpdateAdditionalDetail value,
          $Res Function(_$_UpdateAdditionalDetail) then) =
      __$$_UpdateAdditionalDetailCopyWithImpl<$Res>;
  @useResult
  $Res call({String additionalDetail});
}

/// @nodoc
class __$$_UpdateAdditionalDetailCopyWithImpl<$Res>
    extends _$DeliveryOrderEventCopyWithImpl<$Res, _$_UpdateAdditionalDetail>
    implements _$$_UpdateAdditionalDetailCopyWith<$Res> {
  __$$_UpdateAdditionalDetailCopyWithImpl(_$_UpdateAdditionalDetail _value,
      $Res Function(_$_UpdateAdditionalDetail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? additionalDetail = null,
  }) {
    return _then(_$_UpdateAdditionalDetail(
      null == additionalDetail
          ? _value.additionalDetail
          : additionalDetail // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateAdditionalDetail implements _UpdateAdditionalDetail {
  const _$_UpdateAdditionalDetail(this.additionalDetail);

  @override
  final String additionalDetail;

  @override
  String toString() {
    return 'DeliveryOrderEvent.updateAdditionalDetail(additionalDetail: $additionalDetail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAdditionalDetail &&
            (identical(other.additionalDetail, additionalDetail) ||
                other.additionalDetail == additionalDetail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, additionalDetail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAdditionalDetailCopyWith<_$_UpdateAdditionalDetail> get copyWith =>
      __$$_UpdateAdditionalDetailCopyWithImpl<_$_UpdateAdditionalDetail>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactName) updateName,
    required TResult Function(String contactPhone) updatePhone,
    required TResult Function(String additionalDetail) updateAdditionalDetail,
    required TResult Function(AddressDto? address) updateAddress,
    required TResult Function(Service service) updateService,
    required TResult Function() createOrder,
    required TResult Function() closeSelectable,
    required TResult Function() changeSelectable,
    required TResult Function(Payment payment, String namePayment)
        updatePaymentMethod,
    required TResult Function(String cash) updateCash,
  }) {
    return updateAdditionalDetail(additionalDetail);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactName)? updateName,
    TResult? Function(String contactPhone)? updatePhone,
    TResult? Function(String additionalDetail)? updateAdditionalDetail,
    TResult? Function(AddressDto? address)? updateAddress,
    TResult? Function(Service service)? updateService,
    TResult? Function()? createOrder,
    TResult? Function()? closeSelectable,
    TResult? Function()? changeSelectable,
    TResult? Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult? Function(String cash)? updateCash,
  }) {
    return updateAdditionalDetail?.call(additionalDetail);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactName)? updateName,
    TResult Function(String contactPhone)? updatePhone,
    TResult Function(String additionalDetail)? updateAdditionalDetail,
    TResult Function(AddressDto? address)? updateAddress,
    TResult Function(Service service)? updateService,
    TResult Function()? createOrder,
    TResult Function()? closeSelectable,
    TResult Function()? changeSelectable,
    TResult Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult Function(String cash)? updateCash,
    required TResult orElse(),
  }) {
    if (updateAdditionalDetail != null) {
      return updateAdditionalDetail(additionalDetail);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAdditionalDetail value)
        updateAdditionalDetail,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_CloseSelectable value) closeSelectable,
    required TResult Function(_ChangeSelectable value) changeSelectable,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateCash value) updateCash,
  }) {
    return updateAdditionalDetail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_CloseSelectable value)? closeSelectable,
    TResult? Function(_ChangeSelectable value)? changeSelectable,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateCash value)? updateCash,
  }) {
    return updateAdditionalDetail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_CloseSelectable value)? closeSelectable,
    TResult Function(_ChangeSelectable value)? changeSelectable,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateCash value)? updateCash,
    required TResult orElse(),
  }) {
    if (updateAdditionalDetail != null) {
      return updateAdditionalDetail(this);
    }
    return orElse();
  }
}

abstract class _UpdateAdditionalDetail implements DeliveryOrderEvent {
  const factory _UpdateAdditionalDetail(final String additionalDetail) =
      _$_UpdateAdditionalDetail;

  String get additionalDetail;
  @JsonKey(ignore: true)
  _$$_UpdateAdditionalDetailCopyWith<_$_UpdateAdditionalDetail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateAddressCopyWith<$Res> {
  factory _$$_UpdateAddressCopyWith(
          _$_UpdateAddress value, $Res Function(_$_UpdateAddress) then) =
      __$$_UpdateAddressCopyWithImpl<$Res>;
  @useResult
  $Res call({AddressDto? address});

  $AddressDtoCopyWith<$Res>? get address;
}

/// @nodoc
class __$$_UpdateAddressCopyWithImpl<$Res>
    extends _$DeliveryOrderEventCopyWithImpl<$Res, _$_UpdateAddress>
    implements _$$_UpdateAddressCopyWith<$Res> {
  __$$_UpdateAddressCopyWithImpl(
      _$_UpdateAddress _value, $Res Function(_$_UpdateAddress) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
  }) {
    return _then(_$_UpdateAddress(
      freezed == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as AddressDto?,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressDtoCopyWith<$Res>? get address {
    if (_value.address == null) {
      return null;
    }

    return $AddressDtoCopyWith<$Res>(_value.address!, (value) {
      return _then(_value.copyWith(address: value));
    });
  }
}

/// @nodoc

class _$_UpdateAddress implements _UpdateAddress {
  const _$_UpdateAddress(this.address);

  @override
  final AddressDto? address;

  @override
  String toString() {
    return 'DeliveryOrderEvent.updateAddress(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateAddress &&
            (identical(other.address, address) || other.address == address));
  }

  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAddressCopyWith<_$_UpdateAddress> get copyWith =>
      __$$_UpdateAddressCopyWithImpl<_$_UpdateAddress>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactName) updateName,
    required TResult Function(String contactPhone) updatePhone,
    required TResult Function(String additionalDetail) updateAdditionalDetail,
    required TResult Function(AddressDto? address) updateAddress,
    required TResult Function(Service service) updateService,
    required TResult Function() createOrder,
    required TResult Function() closeSelectable,
    required TResult Function() changeSelectable,
    required TResult Function(Payment payment, String namePayment)
        updatePaymentMethod,
    required TResult Function(String cash) updateCash,
  }) {
    return updateAddress(address);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactName)? updateName,
    TResult? Function(String contactPhone)? updatePhone,
    TResult? Function(String additionalDetail)? updateAdditionalDetail,
    TResult? Function(AddressDto? address)? updateAddress,
    TResult? Function(Service service)? updateService,
    TResult? Function()? createOrder,
    TResult? Function()? closeSelectable,
    TResult? Function()? changeSelectable,
    TResult? Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult? Function(String cash)? updateCash,
  }) {
    return updateAddress?.call(address);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactName)? updateName,
    TResult Function(String contactPhone)? updatePhone,
    TResult Function(String additionalDetail)? updateAdditionalDetail,
    TResult Function(AddressDto? address)? updateAddress,
    TResult Function(Service service)? updateService,
    TResult Function()? createOrder,
    TResult Function()? closeSelectable,
    TResult Function()? changeSelectable,
    TResult Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult Function(String cash)? updateCash,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(address);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAdditionalDetail value)
        updateAdditionalDetail,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_CloseSelectable value) closeSelectable,
    required TResult Function(_ChangeSelectable value) changeSelectable,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateCash value) updateCash,
  }) {
    return updateAddress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_CloseSelectable value)? closeSelectable,
    TResult? Function(_ChangeSelectable value)? changeSelectable,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateCash value)? updateCash,
  }) {
    return updateAddress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_CloseSelectable value)? closeSelectable,
    TResult Function(_ChangeSelectable value)? changeSelectable,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateCash value)? updateCash,
    required TResult orElse(),
  }) {
    if (updateAddress != null) {
      return updateAddress(this);
    }
    return orElse();
  }
}

abstract class _UpdateAddress implements DeliveryOrderEvent {
  const factory _UpdateAddress(final AddressDto? address) = _$_UpdateAddress;

  AddressDto? get address;
  @JsonKey(ignore: true)
  _$$_UpdateAddressCopyWith<_$_UpdateAddress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateServiceCopyWith<$Res> {
  factory _$$_UpdateServiceCopyWith(
          _$_UpdateService value, $Res Function(_$_UpdateService) then) =
      __$$_UpdateServiceCopyWithImpl<$Res>;
  @useResult
  $Res call({Service service});

  $ServiceCopyWith<$Res> get service;
}

/// @nodoc
class __$$_UpdateServiceCopyWithImpl<$Res>
    extends _$DeliveryOrderEventCopyWithImpl<$Res, _$_UpdateService>
    implements _$$_UpdateServiceCopyWith<$Res> {
  __$$_UpdateServiceCopyWithImpl(
      _$_UpdateService _value, $Res Function(_$_UpdateService) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? service = null,
  }) {
    return _then(_$_UpdateService(
      null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res> get service {
    return $ServiceCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value));
    });
  }
}

/// @nodoc

class _$_UpdateService implements _UpdateService {
  const _$_UpdateService(this.service);

  @override
  final Service service;

  @override
  String toString() {
    return 'DeliveryOrderEvent.updateService(service: $service)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateService &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(runtimeType, service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateServiceCopyWith<_$_UpdateService> get copyWith =>
      __$$_UpdateServiceCopyWithImpl<_$_UpdateService>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactName) updateName,
    required TResult Function(String contactPhone) updatePhone,
    required TResult Function(String additionalDetail) updateAdditionalDetail,
    required TResult Function(AddressDto? address) updateAddress,
    required TResult Function(Service service) updateService,
    required TResult Function() createOrder,
    required TResult Function() closeSelectable,
    required TResult Function() changeSelectable,
    required TResult Function(Payment payment, String namePayment)
        updatePaymentMethod,
    required TResult Function(String cash) updateCash,
  }) {
    return updateService(service);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactName)? updateName,
    TResult? Function(String contactPhone)? updatePhone,
    TResult? Function(String additionalDetail)? updateAdditionalDetail,
    TResult? Function(AddressDto? address)? updateAddress,
    TResult? Function(Service service)? updateService,
    TResult? Function()? createOrder,
    TResult? Function()? closeSelectable,
    TResult? Function()? changeSelectable,
    TResult? Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult? Function(String cash)? updateCash,
  }) {
    return updateService?.call(service);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactName)? updateName,
    TResult Function(String contactPhone)? updatePhone,
    TResult Function(String additionalDetail)? updateAdditionalDetail,
    TResult Function(AddressDto? address)? updateAddress,
    TResult Function(Service service)? updateService,
    TResult Function()? createOrder,
    TResult Function()? closeSelectable,
    TResult Function()? changeSelectable,
    TResult Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult Function(String cash)? updateCash,
    required TResult orElse(),
  }) {
    if (updateService != null) {
      return updateService(service);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAdditionalDetail value)
        updateAdditionalDetail,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_CloseSelectable value) closeSelectable,
    required TResult Function(_ChangeSelectable value) changeSelectable,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateCash value) updateCash,
  }) {
    return updateService(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_CloseSelectable value)? closeSelectable,
    TResult? Function(_ChangeSelectable value)? changeSelectable,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateCash value)? updateCash,
  }) {
    return updateService?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_CloseSelectable value)? closeSelectable,
    TResult Function(_ChangeSelectable value)? changeSelectable,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateCash value)? updateCash,
    required TResult orElse(),
  }) {
    if (updateService != null) {
      return updateService(this);
    }
    return orElse();
  }
}

abstract class _UpdateService implements DeliveryOrderEvent {
  const factory _UpdateService(final Service service) = _$_UpdateService;

  Service get service;
  @JsonKey(ignore: true)
  _$$_UpdateServiceCopyWith<_$_UpdateService> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_CreateOrderCopyWith<$Res> {
  factory _$$_CreateOrderCopyWith(
          _$_CreateOrder value, $Res Function(_$_CreateOrder) then) =
      __$$_CreateOrderCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CreateOrderCopyWithImpl<$Res>
    extends _$DeliveryOrderEventCopyWithImpl<$Res, _$_CreateOrder>
    implements _$$_CreateOrderCopyWith<$Res> {
  __$$_CreateOrderCopyWithImpl(
      _$_CreateOrder _value, $Res Function(_$_CreateOrder) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CreateOrder implements _CreateOrder {
  const _$_CreateOrder();

  @override
  String toString() {
    return 'DeliveryOrderEvent.createOrder()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CreateOrder);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactName) updateName,
    required TResult Function(String contactPhone) updatePhone,
    required TResult Function(String additionalDetail) updateAdditionalDetail,
    required TResult Function(AddressDto? address) updateAddress,
    required TResult Function(Service service) updateService,
    required TResult Function() createOrder,
    required TResult Function() closeSelectable,
    required TResult Function() changeSelectable,
    required TResult Function(Payment payment, String namePayment)
        updatePaymentMethod,
    required TResult Function(String cash) updateCash,
  }) {
    return createOrder();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactName)? updateName,
    TResult? Function(String contactPhone)? updatePhone,
    TResult? Function(String additionalDetail)? updateAdditionalDetail,
    TResult? Function(AddressDto? address)? updateAddress,
    TResult? Function(Service service)? updateService,
    TResult? Function()? createOrder,
    TResult? Function()? closeSelectable,
    TResult? Function()? changeSelectable,
    TResult? Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult? Function(String cash)? updateCash,
  }) {
    return createOrder?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactName)? updateName,
    TResult Function(String contactPhone)? updatePhone,
    TResult Function(String additionalDetail)? updateAdditionalDetail,
    TResult Function(AddressDto? address)? updateAddress,
    TResult Function(Service service)? updateService,
    TResult Function()? createOrder,
    TResult Function()? closeSelectable,
    TResult Function()? changeSelectable,
    TResult Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult Function(String cash)? updateCash,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAdditionalDetail value)
        updateAdditionalDetail,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_CloseSelectable value) closeSelectable,
    required TResult Function(_ChangeSelectable value) changeSelectable,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateCash value) updateCash,
  }) {
    return createOrder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_CloseSelectable value)? closeSelectable,
    TResult? Function(_ChangeSelectable value)? changeSelectable,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateCash value)? updateCash,
  }) {
    return createOrder?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_CloseSelectable value)? closeSelectable,
    TResult Function(_ChangeSelectable value)? changeSelectable,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateCash value)? updateCash,
    required TResult orElse(),
  }) {
    if (createOrder != null) {
      return createOrder(this);
    }
    return orElse();
  }
}

abstract class _CreateOrder implements DeliveryOrderEvent {
  const factory _CreateOrder() = _$_CreateOrder;
}

/// @nodoc
abstract class _$$_CloseSelectableCopyWith<$Res> {
  factory _$$_CloseSelectableCopyWith(
          _$_CloseSelectable value, $Res Function(_$_CloseSelectable) then) =
      __$$_CloseSelectableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CloseSelectableCopyWithImpl<$Res>
    extends _$DeliveryOrderEventCopyWithImpl<$Res, _$_CloseSelectable>
    implements _$$_CloseSelectableCopyWith<$Res> {
  __$$_CloseSelectableCopyWithImpl(
      _$_CloseSelectable _value, $Res Function(_$_CloseSelectable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CloseSelectable implements _CloseSelectable {
  const _$_CloseSelectable();

  @override
  String toString() {
    return 'DeliveryOrderEvent.closeSelectable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CloseSelectable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactName) updateName,
    required TResult Function(String contactPhone) updatePhone,
    required TResult Function(String additionalDetail) updateAdditionalDetail,
    required TResult Function(AddressDto? address) updateAddress,
    required TResult Function(Service service) updateService,
    required TResult Function() createOrder,
    required TResult Function() closeSelectable,
    required TResult Function() changeSelectable,
    required TResult Function(Payment payment, String namePayment)
        updatePaymentMethod,
    required TResult Function(String cash) updateCash,
  }) {
    return closeSelectable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactName)? updateName,
    TResult? Function(String contactPhone)? updatePhone,
    TResult? Function(String additionalDetail)? updateAdditionalDetail,
    TResult? Function(AddressDto? address)? updateAddress,
    TResult? Function(Service service)? updateService,
    TResult? Function()? createOrder,
    TResult? Function()? closeSelectable,
    TResult? Function()? changeSelectable,
    TResult? Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult? Function(String cash)? updateCash,
  }) {
    return closeSelectable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactName)? updateName,
    TResult Function(String contactPhone)? updatePhone,
    TResult Function(String additionalDetail)? updateAdditionalDetail,
    TResult Function(AddressDto? address)? updateAddress,
    TResult Function(Service service)? updateService,
    TResult Function()? createOrder,
    TResult Function()? closeSelectable,
    TResult Function()? changeSelectable,
    TResult Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult Function(String cash)? updateCash,
    required TResult orElse(),
  }) {
    if (closeSelectable != null) {
      return closeSelectable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAdditionalDetail value)
        updateAdditionalDetail,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_CloseSelectable value) closeSelectable,
    required TResult Function(_ChangeSelectable value) changeSelectable,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateCash value) updateCash,
  }) {
    return closeSelectable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_CloseSelectable value)? closeSelectable,
    TResult? Function(_ChangeSelectable value)? changeSelectable,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateCash value)? updateCash,
  }) {
    return closeSelectable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_CloseSelectable value)? closeSelectable,
    TResult Function(_ChangeSelectable value)? changeSelectable,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateCash value)? updateCash,
    required TResult orElse(),
  }) {
    if (closeSelectable != null) {
      return closeSelectable(this);
    }
    return orElse();
  }
}

abstract class _CloseSelectable implements DeliveryOrderEvent {
  const factory _CloseSelectable() = _$_CloseSelectable;
}

/// @nodoc
abstract class _$$_ChangeSelectableCopyWith<$Res> {
  factory _$$_ChangeSelectableCopyWith(
          _$_ChangeSelectable value, $Res Function(_$_ChangeSelectable) then) =
      __$$_ChangeSelectableCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ChangeSelectableCopyWithImpl<$Res>
    extends _$DeliveryOrderEventCopyWithImpl<$Res, _$_ChangeSelectable>
    implements _$$_ChangeSelectableCopyWith<$Res> {
  __$$_ChangeSelectableCopyWithImpl(
      _$_ChangeSelectable _value, $Res Function(_$_ChangeSelectable) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ChangeSelectable implements _ChangeSelectable {
  const _$_ChangeSelectable();

  @override
  String toString() {
    return 'DeliveryOrderEvent.changeSelectable()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ChangeSelectable);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactName) updateName,
    required TResult Function(String contactPhone) updatePhone,
    required TResult Function(String additionalDetail) updateAdditionalDetail,
    required TResult Function(AddressDto? address) updateAddress,
    required TResult Function(Service service) updateService,
    required TResult Function() createOrder,
    required TResult Function() closeSelectable,
    required TResult Function() changeSelectable,
    required TResult Function(Payment payment, String namePayment)
        updatePaymentMethod,
    required TResult Function(String cash) updateCash,
  }) {
    return changeSelectable();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactName)? updateName,
    TResult? Function(String contactPhone)? updatePhone,
    TResult? Function(String additionalDetail)? updateAdditionalDetail,
    TResult? Function(AddressDto? address)? updateAddress,
    TResult? Function(Service service)? updateService,
    TResult? Function()? createOrder,
    TResult? Function()? closeSelectable,
    TResult? Function()? changeSelectable,
    TResult? Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult? Function(String cash)? updateCash,
  }) {
    return changeSelectable?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactName)? updateName,
    TResult Function(String contactPhone)? updatePhone,
    TResult Function(String additionalDetail)? updateAdditionalDetail,
    TResult Function(AddressDto? address)? updateAddress,
    TResult Function(Service service)? updateService,
    TResult Function()? createOrder,
    TResult Function()? closeSelectable,
    TResult Function()? changeSelectable,
    TResult Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult Function(String cash)? updateCash,
    required TResult orElse(),
  }) {
    if (changeSelectable != null) {
      return changeSelectable();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAdditionalDetail value)
        updateAdditionalDetail,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_CloseSelectable value) closeSelectable,
    required TResult Function(_ChangeSelectable value) changeSelectable,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateCash value) updateCash,
  }) {
    return changeSelectable(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_CloseSelectable value)? closeSelectable,
    TResult? Function(_ChangeSelectable value)? changeSelectable,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateCash value)? updateCash,
  }) {
    return changeSelectable?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_CloseSelectable value)? closeSelectable,
    TResult Function(_ChangeSelectable value)? changeSelectable,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateCash value)? updateCash,
    required TResult orElse(),
  }) {
    if (changeSelectable != null) {
      return changeSelectable(this);
    }
    return orElse();
  }
}

abstract class _ChangeSelectable implements DeliveryOrderEvent {
  const factory _ChangeSelectable() = _$_ChangeSelectable;
}

/// @nodoc
abstract class _$$_UpdatePaymentMethodCopyWith<$Res> {
  factory _$$_UpdatePaymentMethodCopyWith(_$_UpdatePaymentMethod value,
          $Res Function(_$_UpdatePaymentMethod) then) =
      __$$_UpdatePaymentMethodCopyWithImpl<$Res>;
  @useResult
  $Res call({Payment payment, String namePayment});

  $PaymentCopyWith<$Res> get payment;
}

/// @nodoc
class __$$_UpdatePaymentMethodCopyWithImpl<$Res>
    extends _$DeliveryOrderEventCopyWithImpl<$Res, _$_UpdatePaymentMethod>
    implements _$$_UpdatePaymentMethodCopyWith<$Res> {
  __$$_UpdatePaymentMethodCopyWithImpl(_$_UpdatePaymentMethod _value,
      $Res Function(_$_UpdatePaymentMethod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? payment = null,
    Object? namePayment = null,
  }) {
    return _then(_$_UpdatePaymentMethod(
      null == payment
          ? _value.payment
          : payment // ignore: cast_nullable_to_non_nullable
              as Payment,
      null == namePayment
          ? _value.namePayment
          : namePayment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentCopyWith<$Res> get payment {
    return $PaymentCopyWith<$Res>(_value.payment, (value) {
      return _then(_value.copyWith(payment: value));
    });
  }
}

/// @nodoc

class _$_UpdatePaymentMethod implements _UpdatePaymentMethod {
  const _$_UpdatePaymentMethod(this.payment, this.namePayment);

  @override
  final Payment payment;
  @override
  final String namePayment;

  @override
  String toString() {
    return 'DeliveryOrderEvent.updatePaymentMethod(payment: $payment, namePayment: $namePayment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdatePaymentMethod &&
            (identical(other.payment, payment) || other.payment == payment) &&
            (identical(other.namePayment, namePayment) ||
                other.namePayment == namePayment));
  }

  @override
  int get hashCode => Object.hash(runtimeType, payment, namePayment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdatePaymentMethodCopyWith<_$_UpdatePaymentMethod> get copyWith =>
      __$$_UpdatePaymentMethodCopyWithImpl<_$_UpdatePaymentMethod>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactName) updateName,
    required TResult Function(String contactPhone) updatePhone,
    required TResult Function(String additionalDetail) updateAdditionalDetail,
    required TResult Function(AddressDto? address) updateAddress,
    required TResult Function(Service service) updateService,
    required TResult Function() createOrder,
    required TResult Function() closeSelectable,
    required TResult Function() changeSelectable,
    required TResult Function(Payment payment, String namePayment)
        updatePaymentMethod,
    required TResult Function(String cash) updateCash,
  }) {
    return updatePaymentMethod(payment, namePayment);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactName)? updateName,
    TResult? Function(String contactPhone)? updatePhone,
    TResult? Function(String additionalDetail)? updateAdditionalDetail,
    TResult? Function(AddressDto? address)? updateAddress,
    TResult? Function(Service service)? updateService,
    TResult? Function()? createOrder,
    TResult? Function()? closeSelectable,
    TResult? Function()? changeSelectable,
    TResult? Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult? Function(String cash)? updateCash,
  }) {
    return updatePaymentMethod?.call(payment, namePayment);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactName)? updateName,
    TResult Function(String contactPhone)? updatePhone,
    TResult Function(String additionalDetail)? updateAdditionalDetail,
    TResult Function(AddressDto? address)? updateAddress,
    TResult Function(Service service)? updateService,
    TResult Function()? createOrder,
    TResult Function()? closeSelectable,
    TResult Function()? changeSelectable,
    TResult Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult Function(String cash)? updateCash,
    required TResult orElse(),
  }) {
    if (updatePaymentMethod != null) {
      return updatePaymentMethod(payment, namePayment);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAdditionalDetail value)
        updateAdditionalDetail,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_CloseSelectable value) closeSelectable,
    required TResult Function(_ChangeSelectable value) changeSelectable,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateCash value) updateCash,
  }) {
    return updatePaymentMethod(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_CloseSelectable value)? closeSelectable,
    TResult? Function(_ChangeSelectable value)? changeSelectable,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateCash value)? updateCash,
  }) {
    return updatePaymentMethod?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_CloseSelectable value)? closeSelectable,
    TResult Function(_ChangeSelectable value)? changeSelectable,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateCash value)? updateCash,
    required TResult orElse(),
  }) {
    if (updatePaymentMethod != null) {
      return updatePaymentMethod(this);
    }
    return orElse();
  }
}

abstract class _UpdatePaymentMethod implements DeliveryOrderEvent {
  const factory _UpdatePaymentMethod(
      final Payment payment, final String namePayment) = _$_UpdatePaymentMethod;

  Payment get payment;
  String get namePayment;
  @JsonKey(ignore: true)
  _$$_UpdatePaymentMethodCopyWith<_$_UpdatePaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UpdateCashCopyWith<$Res> {
  factory _$$_UpdateCashCopyWith(
          _$_UpdateCash value, $Res Function(_$_UpdateCash) then) =
      __$$_UpdateCashCopyWithImpl<$Res>;
  @useResult
  $Res call({String cash});
}

/// @nodoc
class __$$_UpdateCashCopyWithImpl<$Res>
    extends _$DeliveryOrderEventCopyWithImpl<$Res, _$_UpdateCash>
    implements _$$_UpdateCashCopyWith<$Res> {
  __$$_UpdateCashCopyWithImpl(
      _$_UpdateCash _value, $Res Function(_$_UpdateCash) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cash = null,
  }) {
    return _then(_$_UpdateCash(
      null == cash
          ? _value.cash
          : cash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_UpdateCash implements _UpdateCash {
  const _$_UpdateCash(this.cash);

  @override
  final String cash;

  @override
  String toString() {
    return 'DeliveryOrderEvent.updateCash(cash: $cash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateCash &&
            (identical(other.cash, cash) || other.cash == cash));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateCashCopyWith<_$_UpdateCash> get copyWith =>
      __$$_UpdateCashCopyWithImpl<_$_UpdateCash>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String contactName) updateName,
    required TResult Function(String contactPhone) updatePhone,
    required TResult Function(String additionalDetail) updateAdditionalDetail,
    required TResult Function(AddressDto? address) updateAddress,
    required TResult Function(Service service) updateService,
    required TResult Function() createOrder,
    required TResult Function() closeSelectable,
    required TResult Function() changeSelectable,
    required TResult Function(Payment payment, String namePayment)
        updatePaymentMethod,
    required TResult Function(String cash) updateCash,
  }) {
    return updateCash(cash);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String contactName)? updateName,
    TResult? Function(String contactPhone)? updatePhone,
    TResult? Function(String additionalDetail)? updateAdditionalDetail,
    TResult? Function(AddressDto? address)? updateAddress,
    TResult? Function(Service service)? updateService,
    TResult? Function()? createOrder,
    TResult? Function()? closeSelectable,
    TResult? Function()? changeSelectable,
    TResult? Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult? Function(String cash)? updateCash,
  }) {
    return updateCash?.call(cash);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String contactName)? updateName,
    TResult Function(String contactPhone)? updatePhone,
    TResult Function(String additionalDetail)? updateAdditionalDetail,
    TResult Function(AddressDto? address)? updateAddress,
    TResult Function(Service service)? updateService,
    TResult Function()? createOrder,
    TResult Function()? closeSelectable,
    TResult Function()? changeSelectable,
    TResult Function(Payment payment, String namePayment)? updatePaymentMethod,
    TResult Function(String cash)? updateCash,
    required TResult orElse(),
  }) {
    if (updateCash != null) {
      return updateCash(cash);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_UpdateName value) updateName,
    required TResult Function(_UpdatePhone value) updatePhone,
    required TResult Function(_UpdateAdditionalDetail value)
        updateAdditionalDetail,
    required TResult Function(_UpdateAddress value) updateAddress,
    required TResult Function(_UpdateService value) updateService,
    required TResult Function(_CreateOrder value) createOrder,
    required TResult Function(_CloseSelectable value) closeSelectable,
    required TResult Function(_ChangeSelectable value) changeSelectable,
    required TResult Function(_UpdatePaymentMethod value) updatePaymentMethod,
    required TResult Function(_UpdateCash value) updateCash,
  }) {
    return updateCash(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_UpdateName value)? updateName,
    TResult? Function(_UpdatePhone value)? updatePhone,
    TResult? Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult? Function(_UpdateAddress value)? updateAddress,
    TResult? Function(_UpdateService value)? updateService,
    TResult? Function(_CreateOrder value)? createOrder,
    TResult? Function(_CloseSelectable value)? closeSelectable,
    TResult? Function(_ChangeSelectable value)? changeSelectable,
    TResult? Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult? Function(_UpdateCash value)? updateCash,
  }) {
    return updateCash?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_UpdateName value)? updateName,
    TResult Function(_UpdatePhone value)? updatePhone,
    TResult Function(_UpdateAdditionalDetail value)? updateAdditionalDetail,
    TResult Function(_UpdateAddress value)? updateAddress,
    TResult Function(_UpdateService value)? updateService,
    TResult Function(_CreateOrder value)? createOrder,
    TResult Function(_CloseSelectable value)? closeSelectable,
    TResult Function(_ChangeSelectable value)? changeSelectable,
    TResult Function(_UpdatePaymentMethod value)? updatePaymentMethod,
    TResult Function(_UpdateCash value)? updateCash,
    required TResult orElse(),
  }) {
    if (updateCash != null) {
      return updateCash(this);
    }
    return orElse();
  }
}

abstract class _UpdateCash implements DeliveryOrderEvent {
  const factory _UpdateCash(final String cash) = _$_UpdateCash;

  String get cash;
  @JsonKey(ignore: true)
  _$$_UpdateCashCopyWith<_$_UpdateCash> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$DeliveryOrderState {
  Option<AddressDto> get address => throw _privateConstructorUsedError;
  PaymentMethod get paymentMethod => throw _privateConstructorUsedError;
  ShoppingCartDto get shoppingCartDto => throw _privateConstructorUsedError;
  EstablishmentDto get establishmentDto => throw _privateConstructorUsedError;
  String get contactName => throw _privateConstructorUsedError;
  String get contactPhone => throw _privateConstructorUsedError;
  bool get isSelectableExpanded => throw _privateConstructorUsedError;
  Map<String, String> get additionalDetail =>
      throw _privateConstructorUsedError;
  Service get service => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DeliveryOrderStateCopyWith<DeliveryOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeliveryOrderStateCopyWith<$Res> {
  factory $DeliveryOrderStateCopyWith(
          DeliveryOrderState value, $Res Function(DeliveryOrderState) then) =
      _$DeliveryOrderStateCopyWithImpl<$Res, DeliveryOrderState>;
  @useResult
  $Res call(
      {Option<AddressDto> address,
      PaymentMethod paymentMethod,
      ShoppingCartDto shoppingCartDto,
      EstablishmentDto establishmentDto,
      String contactName,
      String contactPhone,
      bool isSelectableExpanded,
      Map<String, String> additionalDetail,
      Service service});

  $PaymentMethodCopyWith<$Res> get paymentMethod;
  $ShoppingCartDtoCopyWith<$Res> get shoppingCartDto;
  $EstablishmentDtoCopyWith<$Res> get establishmentDto;
  $ServiceCopyWith<$Res> get service;
}

/// @nodoc
class _$DeliveryOrderStateCopyWithImpl<$Res, $Val extends DeliveryOrderState>
    implements $DeliveryOrderStateCopyWith<$Res> {
  _$DeliveryOrderStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? paymentMethod = null,
    Object? shoppingCartDto = null,
    Object? establishmentDto = null,
    Object? contactName = null,
    Object? contactPhone = null,
    Object? isSelectableExpanded = null,
    Object? additionalDetail = null,
    Object? service = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Option<AddressDto>,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      shoppingCartDto: null == shoppingCartDto
          ? _value.shoppingCartDto
          : shoppingCartDto // ignore: cast_nullable_to_non_nullable
              as ShoppingCartDto,
      establishmentDto: null == establishmentDto
          ? _value.establishmentDto
          : establishmentDto // ignore: cast_nullable_to_non_nullable
              as EstablishmentDto,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      contactPhone: null == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String,
      isSelectableExpanded: null == isSelectableExpanded
          ? _value.isSelectableExpanded
          : isSelectableExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalDetail: null == additionalDetail
          ? _value.additionalDetail
          : additionalDetail // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PaymentMethodCopyWith<$Res> get paymentMethod {
    return $PaymentMethodCopyWith<$Res>(_value.paymentMethod, (value) {
      return _then(_value.copyWith(paymentMethod: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ShoppingCartDtoCopyWith<$Res> get shoppingCartDto {
    return $ShoppingCartDtoCopyWith<$Res>(_value.shoppingCartDto, (value) {
      return _then(_value.copyWith(shoppingCartDto: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $EstablishmentDtoCopyWith<$Res> get establishmentDto {
    return $EstablishmentDtoCopyWith<$Res>(_value.establishmentDto, (value) {
      return _then(_value.copyWith(establishmentDto: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ServiceCopyWith<$Res> get service {
    return $ServiceCopyWith<$Res>(_value.service, (value) {
      return _then(_value.copyWith(service: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DeliveryOrderStateCopyWith<$Res>
    implements $DeliveryOrderStateCopyWith<$Res> {
  factory _$$_DeliveryOrderStateCopyWith(_$_DeliveryOrderState value,
          $Res Function(_$_DeliveryOrderState) then) =
      __$$_DeliveryOrderStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<AddressDto> address,
      PaymentMethod paymentMethod,
      ShoppingCartDto shoppingCartDto,
      EstablishmentDto establishmentDto,
      String contactName,
      String contactPhone,
      bool isSelectableExpanded,
      Map<String, String> additionalDetail,
      Service service});

  @override
  $PaymentMethodCopyWith<$Res> get paymentMethod;
  @override
  $ShoppingCartDtoCopyWith<$Res> get shoppingCartDto;
  @override
  $EstablishmentDtoCopyWith<$Res> get establishmentDto;
  @override
  $ServiceCopyWith<$Res> get service;
}

/// @nodoc
class __$$_DeliveryOrderStateCopyWithImpl<$Res>
    extends _$DeliveryOrderStateCopyWithImpl<$Res, _$_DeliveryOrderState>
    implements _$$_DeliveryOrderStateCopyWith<$Res> {
  __$$_DeliveryOrderStateCopyWithImpl(
      _$_DeliveryOrderState _value, $Res Function(_$_DeliveryOrderState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? paymentMethod = null,
    Object? shoppingCartDto = null,
    Object? establishmentDto = null,
    Object? contactName = null,
    Object? contactPhone = null,
    Object? isSelectableExpanded = null,
    Object? additionalDetail = null,
    Object? service = null,
  }) {
    return _then(_$_DeliveryOrderState(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Option<AddressDto>,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as PaymentMethod,
      shoppingCartDto: null == shoppingCartDto
          ? _value.shoppingCartDto
          : shoppingCartDto // ignore: cast_nullable_to_non_nullable
              as ShoppingCartDto,
      establishmentDto: null == establishmentDto
          ? _value.establishmentDto
          : establishmentDto // ignore: cast_nullable_to_non_nullable
              as EstablishmentDto,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      contactPhone: null == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String,
      isSelectableExpanded: null == isSelectableExpanded
          ? _value.isSelectableExpanded
          : isSelectableExpanded // ignore: cast_nullable_to_non_nullable
              as bool,
      additionalDetail: null == additionalDetail
          ? _value._additionalDetail
          : additionalDetail // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
      service: null == service
          ? _value.service
          : service // ignore: cast_nullable_to_non_nullable
              as Service,
    ));
  }
}

/// @nodoc

class _$_DeliveryOrderState extends _DeliveryOrderState {
  const _$_DeliveryOrderState(
      {required this.address,
      required this.paymentMethod,
      required this.shoppingCartDto,
      required this.establishmentDto,
      this.contactName = '',
      this.contactPhone = '',
      this.isSelectableExpanded = false,
      final Map<String, String> additionalDetail = const {},
      this.service = const Service.takeaway()})
      : _additionalDetail = additionalDetail,
        super._();

  @override
  final Option<AddressDto> address;
  @override
  final PaymentMethod paymentMethod;
  @override
  final ShoppingCartDto shoppingCartDto;
  @override
  final EstablishmentDto establishmentDto;
  @override
  @JsonKey()
  final String contactName;
  @override
  @JsonKey()
  final String contactPhone;
  @override
  @JsonKey()
  final bool isSelectableExpanded;
  final Map<String, String> _additionalDetail;
  @override
  @JsonKey()
  Map<String, String> get additionalDetail {
    if (_additionalDetail is EqualUnmodifiableMapView) return _additionalDetail;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_additionalDetail);
  }

  @override
  @JsonKey()
  final Service service;

  @override
  String toString() {
    return 'DeliveryOrderState(address: $address, paymentMethod: $paymentMethod, shoppingCartDto: $shoppingCartDto, establishmentDto: $establishmentDto, contactName: $contactName, contactPhone: $contactPhone, isSelectableExpanded: $isSelectableExpanded, additionalDetail: $additionalDetail, service: $service)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryOrderState &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.shoppingCartDto, shoppingCartDto) ||
                other.shoppingCartDto == shoppingCartDto) &&
            (identical(other.establishmentDto, establishmentDto) ||
                other.establishmentDto == establishmentDto) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            (identical(other.isSelectableExpanded, isSelectableExpanded) ||
                other.isSelectableExpanded == isSelectableExpanded) &&
            const DeepCollectionEquality()
                .equals(other._additionalDetail, _additionalDetail) &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      paymentMethod,
      shoppingCartDto,
      establishmentDto,
      contactName,
      contactPhone,
      isSelectableExpanded,
      const DeepCollectionEquality().hash(_additionalDetail),
      service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryOrderStateCopyWith<_$_DeliveryOrderState> get copyWith =>
      __$$_DeliveryOrderStateCopyWithImpl<_$_DeliveryOrderState>(
          this, _$identity);
}

abstract class _DeliveryOrderState extends DeliveryOrderState {
  const factory _DeliveryOrderState(
      {required final Option<AddressDto> address,
      required final PaymentMethod paymentMethod,
      required final ShoppingCartDto shoppingCartDto,
      required final EstablishmentDto establishmentDto,
      final String contactName,
      final String contactPhone,
      final bool isSelectableExpanded,
      final Map<String, String> additionalDetail,
      final Service service}) = _$_DeliveryOrderState;
  const _DeliveryOrderState._() : super._();

  @override
  Option<AddressDto> get address;
  @override
  PaymentMethod get paymentMethod;
  @override
  ShoppingCartDto get shoppingCartDto;
  @override
  EstablishmentDto get establishmentDto;
  @override
  String get contactName;
  @override
  String get contactPhone;
  @override
  bool get isSelectableExpanded;
  @override
  Map<String, String> get additionalDetail;
  @override
  Service get service;
  @override
  @JsonKey(ignore: true)
  _$$_DeliveryOrderStateCopyWith<_$_DeliveryOrderState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$Service {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() takeaway,
    required TResult Function() delivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? takeaway,
    TResult? Function()? delivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? takeaway,
    TResult Function()? delivery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Takeaway value) takeaway,
    required TResult Function(_Delivery value) delivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Takeaway value)? takeaway,
    TResult? Function(_Delivery value)? delivery,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Takeaway value)? takeaway,
    TResult Function(_Delivery value)? delivery,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServiceCopyWith<$Res> {
  factory $ServiceCopyWith(Service value, $Res Function(Service) then) =
      _$ServiceCopyWithImpl<$Res, Service>;
}

/// @nodoc
class _$ServiceCopyWithImpl<$Res, $Val extends Service>
    implements $ServiceCopyWith<$Res> {
  _$ServiceCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_TakeawayCopyWith<$Res> {
  factory _$$_TakeawayCopyWith(
          _$_Takeaway value, $Res Function(_$_Takeaway) then) =
      __$$_TakeawayCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_TakeawayCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$_Takeaway>
    implements _$$_TakeawayCopyWith<$Res> {
  __$$_TakeawayCopyWithImpl(
      _$_Takeaway _value, $Res Function(_$_Takeaway) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Takeaway extends _Takeaway {
  const _$_Takeaway() : super._();

  @override
  String toString() {
    return 'Service.takeaway()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Takeaway);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() takeaway,
    required TResult Function() delivery,
  }) {
    return takeaway();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? takeaway,
    TResult? Function()? delivery,
  }) {
    return takeaway?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? takeaway,
    TResult Function()? delivery,
    required TResult orElse(),
  }) {
    if (takeaway != null) {
      return takeaway();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Takeaway value) takeaway,
    required TResult Function(_Delivery value) delivery,
  }) {
    return takeaway(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Takeaway value)? takeaway,
    TResult? Function(_Delivery value)? delivery,
  }) {
    return takeaway?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Takeaway value)? takeaway,
    TResult Function(_Delivery value)? delivery,
    required TResult orElse(),
  }) {
    if (takeaway != null) {
      return takeaway(this);
    }
    return orElse();
  }
}

abstract class _Takeaway extends Service {
  const factory _Takeaway() = _$_Takeaway;
  const _Takeaway._() : super._();
}

/// @nodoc
abstract class _$$_DeliveryCopyWith<$Res> {
  factory _$$_DeliveryCopyWith(
          _$_Delivery value, $Res Function(_$_Delivery) then) =
      __$$_DeliveryCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_DeliveryCopyWithImpl<$Res>
    extends _$ServiceCopyWithImpl<$Res, _$_Delivery>
    implements _$$_DeliveryCopyWith<$Res> {
  __$$_DeliveryCopyWithImpl(
      _$_Delivery _value, $Res Function(_$_Delivery) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Delivery extends _Delivery {
  const _$_Delivery() : super._();

  @override
  String toString() {
    return 'Service.delivery()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Delivery);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() takeaway,
    required TResult Function() delivery,
  }) {
    return delivery();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? takeaway,
    TResult? Function()? delivery,
  }) {
    return delivery?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? takeaway,
    TResult Function()? delivery,
    required TResult orElse(),
  }) {
    if (delivery != null) {
      return delivery();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Takeaway value) takeaway,
    required TResult Function(_Delivery value) delivery,
  }) {
    return delivery(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Takeaway value)? takeaway,
    TResult? Function(_Delivery value)? delivery,
  }) {
    return delivery?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Takeaway value)? takeaway,
    TResult Function(_Delivery value)? delivery,
    required TResult orElse(),
  }) {
    if (delivery != null) {
      return delivery(this);
    }
    return orElse();
  }
}

abstract class _Delivery extends Service {
  const factory _Delivery() = _$_Delivery;
  const _Delivery._() : super._();
}

/// @nodoc
mixin _$PaymentMethod {
  Option<Payment> get method => throw _privateConstructorUsedError;
  String get paymentMethod => throw _privateConstructorUsedError;
  double get cash => throw _privateConstructorUsedError;
  bool get isInit => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PaymentMethodCopyWith<PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PaymentMethodCopyWith<$Res> {
  factory $PaymentMethodCopyWith(
          PaymentMethod value, $Res Function(PaymentMethod) then) =
      _$PaymentMethodCopyWithImpl<$Res, PaymentMethod>;
  @useResult
  $Res call(
      {Option<Payment> method, String paymentMethod, double cash, bool isInit});
}

/// @nodoc
class _$PaymentMethodCopyWithImpl<$Res, $Val extends PaymentMethod>
    implements $PaymentMethodCopyWith<$Res> {
  _$PaymentMethodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? paymentMethod = null,
    Object? cash = null,
    Object? isInit = null,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as Option<Payment>,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      cash: null == cash
          ? _value.cash
          : cash // ignore: cast_nullable_to_non_nullable
              as double,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PaymentMethodCopyWith<$Res>
    implements $PaymentMethodCopyWith<$Res> {
  factory _$$_PaymentMethodCopyWith(
          _$_PaymentMethod value, $Res Function(_$_PaymentMethod) then) =
      __$$_PaymentMethodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Option<Payment> method, String paymentMethod, double cash, bool isInit});
}

/// @nodoc
class __$$_PaymentMethodCopyWithImpl<$Res>
    extends _$PaymentMethodCopyWithImpl<$Res, _$_PaymentMethod>
    implements _$$_PaymentMethodCopyWith<$Res> {
  __$$_PaymentMethodCopyWithImpl(
      _$_PaymentMethod _value, $Res Function(_$_PaymentMethod) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? paymentMethod = null,
    Object? cash = null,
    Object? isInit = null,
  }) {
    return _then(_$_PaymentMethod(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as Option<Payment>,
      paymentMethod: null == paymentMethod
          ? _value.paymentMethod
          : paymentMethod // ignore: cast_nullable_to_non_nullable
              as String,
      cash: null == cash
          ? _value.cash
          : cash // ignore: cast_nullable_to_non_nullable
              as double,
      isInit: null == isInit
          ? _value.isInit
          : isInit // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_PaymentMethod extends _PaymentMethod {
  const _$_PaymentMethod(
      {required this.method,
      this.paymentMethod = '',
      this.cash = 0,
      this.isInit = true})
      : super._();

  @override
  final Option<Payment> method;
  @override
  @JsonKey()
  final String paymentMethod;
  @override
  @JsonKey()
  final double cash;
  @override
  @JsonKey()
  final bool isInit;

  @override
  String toString() {
    return 'PaymentMethod(method: $method, paymentMethod: $paymentMethod, cash: $cash, isInit: $isInit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PaymentMethod &&
            (identical(other.method, method) || other.method == method) &&
            (identical(other.paymentMethod, paymentMethod) ||
                other.paymentMethod == paymentMethod) &&
            (identical(other.cash, cash) || other.cash == cash) &&
            (identical(other.isInit, isInit) || other.isInit == isInit));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, method, paymentMethod, cash, isInit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PaymentMethodCopyWith<_$_PaymentMethod> get copyWith =>
      __$$_PaymentMethodCopyWithImpl<_$_PaymentMethod>(this, _$identity);
}

abstract class _PaymentMethod extends PaymentMethod {
  const factory _PaymentMethod(
      {required final Option<Payment> method,
      final String paymentMethod,
      final double cash,
      final bool isInit}) = _$_PaymentMethod;
  const _PaymentMethod._() : super._();

  @override
  Option<Payment> get method;
  @override
  String get paymentMethod;
  @override
  double get cash;
  @override
  bool get isInit;
  @override
  @JsonKey(ignore: true)
  _$$_PaymentMethodCopyWith<_$_PaymentMethod> get copyWith =>
      throw _privateConstructorUsedError;
}
