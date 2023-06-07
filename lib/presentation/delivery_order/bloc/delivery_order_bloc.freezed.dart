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
mixin _$DeliveryOrderState {
  Option<AddressDto> get address => throw _privateConstructorUsedError;
  String get contactName => throw _privateConstructorUsedError;
  String get contactPhone => throw _privateConstructorUsedError;
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
      String contactName,
      String contactPhone,
      Map<String, String> additionalDetail,
      Service service});

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
    Object? contactName = null,
    Object? contactPhone = null,
    Object? additionalDetail = null,
    Object? service = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Option<AddressDto>,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      contactPhone: null == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String,
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
      String contactName,
      String contactPhone,
      Map<String, String> additionalDetail,
      Service service});

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
    Object? contactName = null,
    Object? contactPhone = null,
    Object? additionalDetail = null,
    Object? service = null,
  }) {
    return _then(_$_DeliveryOrderState(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Option<AddressDto>,
      contactName: null == contactName
          ? _value.contactName
          : contactName // ignore: cast_nullable_to_non_nullable
              as String,
      contactPhone: null == contactPhone
          ? _value.contactPhone
          : contactPhone // ignore: cast_nullable_to_non_nullable
              as String,
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

class _$_DeliveryOrderState implements _DeliveryOrderState {
  const _$_DeliveryOrderState(
      {required this.address,
      this.contactName = '',
      this.contactPhone = '',
      final Map<String, String> additionalDetail = const {},
      this.service = const Service.takeaway()})
      : _additionalDetail = additionalDetail;

  @override
  final Option<AddressDto> address;
  @override
  @JsonKey()
  final String contactName;
  @override
  @JsonKey()
  final String contactPhone;
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
    return 'DeliveryOrderState(address: $address, contactName: $contactName, contactPhone: $contactPhone, additionalDetail: $additionalDetail, service: $service)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeliveryOrderState &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.contactName, contactName) ||
                other.contactName == contactName) &&
            (identical(other.contactPhone, contactPhone) ||
                other.contactPhone == contactPhone) &&
            const DeepCollectionEquality()
                .equals(other._additionalDetail, _additionalDetail) &&
            (identical(other.service, service) || other.service == service));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      address,
      contactName,
      contactPhone,
      const DeepCollectionEquality().hash(_additionalDetail),
      service);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeliveryOrderStateCopyWith<_$_DeliveryOrderState> get copyWith =>
      __$$_DeliveryOrderStateCopyWithImpl<_$_DeliveryOrderState>(
          this, _$identity);
}

abstract class _DeliveryOrderState implements DeliveryOrderState {
  const factory _DeliveryOrderState(
      {required final Option<AddressDto> address,
      final String contactName,
      final String contactPhone,
      final Map<String, String> additionalDetail,
      final Service service}) = _$_DeliveryOrderState;

  @override
  Option<AddressDto> get address;
  @override
  String get contactName;
  @override
  String get contactPhone;
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
