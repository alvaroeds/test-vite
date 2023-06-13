// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'summary_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SummaryDto _$SummaryDtoFromJson(Map<String, dynamic> json) {
  return _SummaryDto.fromJson(json);
}

/// @nodoc
mixin _$SummaryDto {
  String get nroOrder => throw _privateConstructorUsedError;
  String get establishmentId => throw _privateConstructorUsedError;
  String get establishmentAddress => throw _privateConstructorUsedError;
  String get establishmentHost => throw _privateConstructorUsedError;
  String get clientPhone => throw _privateConstructorUsedError;
  String get clientName => throw _privateConstructorUsedError;
  String get methodOfPayment => throw _privateConstructorUsedError;
  int get deliveryDateOnMilliseconds => throw _privateConstructorUsedError;
  double get deliveryCost => throw _privateConstructorUsedError;
  double get costOfProducts => throw _privateConstructorUsedError;
  double get cashOfClient => throw _privateConstructorUsedError;
  List<SummaryProduct> get summaryOfProducts =>
      throw _privateConstructorUsedError;
  String get additionalAddressDetail => throw _privateConstructorUsedError;
  String? get addressOfDelivery => throw _privateConstructorUsedError;
  @JsonKey(includeFromJson: false)
  DateTime? get deliveryDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummaryDtoCopyWith<SummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryDtoCopyWith<$Res> {
  factory $SummaryDtoCopyWith(
          SummaryDto value, $Res Function(SummaryDto) then) =
      _$SummaryDtoCopyWithImpl<$Res, SummaryDto>;
  @useResult
  $Res call(
      {String nroOrder,
      String establishmentId,
      String establishmentAddress,
      String establishmentHost,
      String clientPhone,
      String clientName,
      String methodOfPayment,
      int deliveryDateOnMilliseconds,
      double deliveryCost,
      double costOfProducts,
      double cashOfClient,
      List<SummaryProduct> summaryOfProducts,
      String additionalAddressDetail,
      String? addressOfDelivery,
      @JsonKey(includeFromJson: false) DateTime? deliveryDate});
}

/// @nodoc
class _$SummaryDtoCopyWithImpl<$Res, $Val extends SummaryDto>
    implements $SummaryDtoCopyWith<$Res> {
  _$SummaryDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nroOrder = null,
    Object? establishmentId = null,
    Object? establishmentAddress = null,
    Object? establishmentHost = null,
    Object? clientPhone = null,
    Object? clientName = null,
    Object? methodOfPayment = null,
    Object? deliveryDateOnMilliseconds = null,
    Object? deliveryCost = null,
    Object? costOfProducts = null,
    Object? cashOfClient = null,
    Object? summaryOfProducts = null,
    Object? additionalAddressDetail = null,
    Object? addressOfDelivery = freezed,
    Object? deliveryDate = freezed,
  }) {
    return _then(_value.copyWith(
      nroOrder: null == nroOrder
          ? _value.nroOrder
          : nroOrder // ignore: cast_nullable_to_non_nullable
              as String,
      establishmentId: null == establishmentId
          ? _value.establishmentId
          : establishmentId // ignore: cast_nullable_to_non_nullable
              as String,
      establishmentAddress: null == establishmentAddress
          ? _value.establishmentAddress
          : establishmentAddress // ignore: cast_nullable_to_non_nullable
              as String,
      establishmentHost: null == establishmentHost
          ? _value.establishmentHost
          : establishmentHost // ignore: cast_nullable_to_non_nullable
              as String,
      clientPhone: null == clientPhone
          ? _value.clientPhone
          : clientPhone // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      methodOfPayment: null == methodOfPayment
          ? _value.methodOfPayment
          : methodOfPayment // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDateOnMilliseconds: null == deliveryDateOnMilliseconds
          ? _value.deliveryDateOnMilliseconds
          : deliveryDateOnMilliseconds // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryCost: null == deliveryCost
          ? _value.deliveryCost
          : deliveryCost // ignore: cast_nullable_to_non_nullable
              as double,
      costOfProducts: null == costOfProducts
          ? _value.costOfProducts
          : costOfProducts // ignore: cast_nullable_to_non_nullable
              as double,
      cashOfClient: null == cashOfClient
          ? _value.cashOfClient
          : cashOfClient // ignore: cast_nullable_to_non_nullable
              as double,
      summaryOfProducts: null == summaryOfProducts
          ? _value.summaryOfProducts
          : summaryOfProducts // ignore: cast_nullable_to_non_nullable
              as List<SummaryProduct>,
      additionalAddressDetail: null == additionalAddressDetail
          ? _value.additionalAddressDetail
          : additionalAddressDetail // ignore: cast_nullable_to_non_nullable
              as String,
      addressOfDelivery: freezed == addressOfDelivery
          ? _value.addressOfDelivery
          : addressOfDelivery // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SummaryDtoCopyWith<$Res>
    implements $SummaryDtoCopyWith<$Res> {
  factory _$$_SummaryDtoCopyWith(
          _$_SummaryDto value, $Res Function(_$_SummaryDto) then) =
      __$$_SummaryDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String nroOrder,
      String establishmentId,
      String establishmentAddress,
      String establishmentHost,
      String clientPhone,
      String clientName,
      String methodOfPayment,
      int deliveryDateOnMilliseconds,
      double deliveryCost,
      double costOfProducts,
      double cashOfClient,
      List<SummaryProduct> summaryOfProducts,
      String additionalAddressDetail,
      String? addressOfDelivery,
      @JsonKey(includeFromJson: false) DateTime? deliveryDate});
}

/// @nodoc
class __$$_SummaryDtoCopyWithImpl<$Res>
    extends _$SummaryDtoCopyWithImpl<$Res, _$_SummaryDto>
    implements _$$_SummaryDtoCopyWith<$Res> {
  __$$_SummaryDtoCopyWithImpl(
      _$_SummaryDto _value, $Res Function(_$_SummaryDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nroOrder = null,
    Object? establishmentId = null,
    Object? establishmentAddress = null,
    Object? establishmentHost = null,
    Object? clientPhone = null,
    Object? clientName = null,
    Object? methodOfPayment = null,
    Object? deliveryDateOnMilliseconds = null,
    Object? deliveryCost = null,
    Object? costOfProducts = null,
    Object? cashOfClient = null,
    Object? summaryOfProducts = null,
    Object? additionalAddressDetail = null,
    Object? addressOfDelivery = freezed,
    Object? deliveryDate = freezed,
  }) {
    return _then(_$_SummaryDto(
      nroOrder: null == nroOrder
          ? _value.nroOrder
          : nroOrder // ignore: cast_nullable_to_non_nullable
              as String,
      establishmentId: null == establishmentId
          ? _value.establishmentId
          : establishmentId // ignore: cast_nullable_to_non_nullable
              as String,
      establishmentAddress: null == establishmentAddress
          ? _value.establishmentAddress
          : establishmentAddress // ignore: cast_nullable_to_non_nullable
              as String,
      establishmentHost: null == establishmentHost
          ? _value.establishmentHost
          : establishmentHost // ignore: cast_nullable_to_non_nullable
              as String,
      clientPhone: null == clientPhone
          ? _value.clientPhone
          : clientPhone // ignore: cast_nullable_to_non_nullable
              as String,
      clientName: null == clientName
          ? _value.clientName
          : clientName // ignore: cast_nullable_to_non_nullable
              as String,
      methodOfPayment: null == methodOfPayment
          ? _value.methodOfPayment
          : methodOfPayment // ignore: cast_nullable_to_non_nullable
              as String,
      deliveryDateOnMilliseconds: null == deliveryDateOnMilliseconds
          ? _value.deliveryDateOnMilliseconds
          : deliveryDateOnMilliseconds // ignore: cast_nullable_to_non_nullable
              as int,
      deliveryCost: null == deliveryCost
          ? _value.deliveryCost
          : deliveryCost // ignore: cast_nullable_to_non_nullable
              as double,
      costOfProducts: null == costOfProducts
          ? _value.costOfProducts
          : costOfProducts // ignore: cast_nullable_to_non_nullable
              as double,
      cashOfClient: null == cashOfClient
          ? _value.cashOfClient
          : cashOfClient // ignore: cast_nullable_to_non_nullable
              as double,
      summaryOfProducts: null == summaryOfProducts
          ? _value._summaryOfProducts
          : summaryOfProducts // ignore: cast_nullable_to_non_nullable
              as List<SummaryProduct>,
      additionalAddressDetail: null == additionalAddressDetail
          ? _value.additionalAddressDetail
          : additionalAddressDetail // ignore: cast_nullable_to_non_nullable
              as String,
      addressOfDelivery: freezed == addressOfDelivery
          ? _value.addressOfDelivery
          : addressOfDelivery // ignore: cast_nullable_to_non_nullable
              as String?,
      deliveryDate: freezed == deliveryDate
          ? _value.deliveryDate
          : deliveryDate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SummaryDto extends _SummaryDto {
  _$_SummaryDto(
      {required this.nroOrder,
      required this.establishmentId,
      required this.establishmentAddress,
      required this.establishmentHost,
      required this.clientPhone,
      required this.clientName,
      required this.methodOfPayment,
      required this.deliveryDateOnMilliseconds,
      required this.deliveryCost,
      required this.costOfProducts,
      required this.cashOfClient,
      required final List<SummaryProduct> summaryOfProducts,
      this.additionalAddressDetail = '',
      this.addressOfDelivery,
      @JsonKey(includeFromJson: false) this.deliveryDate})
      : _summaryOfProducts = summaryOfProducts,
        super._();

  factory _$_SummaryDto.fromJson(Map<String, dynamic> json) =>
      _$$_SummaryDtoFromJson(json);

  @override
  final String nroOrder;
  @override
  final String establishmentId;
  @override
  final String establishmentAddress;
  @override
  final String establishmentHost;
  @override
  final String clientPhone;
  @override
  final String clientName;
  @override
  final String methodOfPayment;
  @override
  final int deliveryDateOnMilliseconds;
  @override
  final double deliveryCost;
  @override
  final double costOfProducts;
  @override
  final double cashOfClient;
  final List<SummaryProduct> _summaryOfProducts;
  @override
  List<SummaryProduct> get summaryOfProducts {
    if (_summaryOfProducts is EqualUnmodifiableListView)
      return _summaryOfProducts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_summaryOfProducts);
  }

  @override
  @JsonKey()
  final String additionalAddressDetail;
  @override
  final String? addressOfDelivery;
  @override
  @JsonKey(includeFromJson: false)
  final DateTime? deliveryDate;

  @override
  String toString() {
    return 'SummaryDto(nroOrder: $nroOrder, establishmentId: $establishmentId, establishmentAddress: $establishmentAddress, establishmentHost: $establishmentHost, clientPhone: $clientPhone, clientName: $clientName, methodOfPayment: $methodOfPayment, deliveryDateOnMilliseconds: $deliveryDateOnMilliseconds, deliveryCost: $deliveryCost, costOfProducts: $costOfProducts, cashOfClient: $cashOfClient, summaryOfProducts: $summaryOfProducts, additionalAddressDetail: $additionalAddressDetail, addressOfDelivery: $addressOfDelivery, deliveryDate: $deliveryDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummaryDto &&
            (identical(other.nroOrder, nroOrder) ||
                other.nroOrder == nroOrder) &&
            (identical(other.establishmentId, establishmentId) ||
                other.establishmentId == establishmentId) &&
            (identical(other.establishmentAddress, establishmentAddress) ||
                other.establishmentAddress == establishmentAddress) &&
            (identical(other.establishmentHost, establishmentHost) ||
                other.establishmentHost == establishmentHost) &&
            (identical(other.clientPhone, clientPhone) ||
                other.clientPhone == clientPhone) &&
            (identical(other.clientName, clientName) ||
                other.clientName == clientName) &&
            (identical(other.methodOfPayment, methodOfPayment) ||
                other.methodOfPayment == methodOfPayment) &&
            (identical(other.deliveryDateOnMilliseconds,
                    deliveryDateOnMilliseconds) ||
                other.deliveryDateOnMilliseconds ==
                    deliveryDateOnMilliseconds) &&
            (identical(other.deliveryCost, deliveryCost) ||
                other.deliveryCost == deliveryCost) &&
            (identical(other.costOfProducts, costOfProducts) ||
                other.costOfProducts == costOfProducts) &&
            (identical(other.cashOfClient, cashOfClient) ||
                other.cashOfClient == cashOfClient) &&
            const DeepCollectionEquality()
                .equals(other._summaryOfProducts, _summaryOfProducts) &&
            (identical(
                    other.additionalAddressDetail, additionalAddressDetail) ||
                other.additionalAddressDetail == additionalAddressDetail) &&
            (identical(other.addressOfDelivery, addressOfDelivery) ||
                other.addressOfDelivery == addressOfDelivery) &&
            (identical(other.deliveryDate, deliveryDate) ||
                other.deliveryDate == deliveryDate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      nroOrder,
      establishmentId,
      establishmentAddress,
      establishmentHost,
      clientPhone,
      clientName,
      methodOfPayment,
      deliveryDateOnMilliseconds,
      deliveryCost,
      costOfProducts,
      cashOfClient,
      const DeepCollectionEquality().hash(_summaryOfProducts),
      additionalAddressDetail,
      addressOfDelivery,
      deliveryDate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryDtoCopyWith<_$_SummaryDto> get copyWith =>
      __$$_SummaryDtoCopyWithImpl<_$_SummaryDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SummaryDtoToJson(
      this,
    );
  }
}

abstract class _SummaryDto extends SummaryDto {
  factory _SummaryDto(
          {required final String nroOrder,
          required final String establishmentId,
          required final String establishmentAddress,
          required final String establishmentHost,
          required final String clientPhone,
          required final String clientName,
          required final String methodOfPayment,
          required final int deliveryDateOnMilliseconds,
          required final double deliveryCost,
          required final double costOfProducts,
          required final double cashOfClient,
          required final List<SummaryProduct> summaryOfProducts,
          final String additionalAddressDetail,
          final String? addressOfDelivery,
          @JsonKey(includeFromJson: false) final DateTime? deliveryDate}) =
      _$_SummaryDto;
  _SummaryDto._() : super._();

  factory _SummaryDto.fromJson(Map<String, dynamic> json) =
      _$_SummaryDto.fromJson;

  @override
  String get nroOrder;
  @override
  String get establishmentId;
  @override
  String get establishmentAddress;
  @override
  String get establishmentHost;
  @override
  String get clientPhone;
  @override
  String get clientName;
  @override
  String get methodOfPayment;
  @override
  int get deliveryDateOnMilliseconds;
  @override
  double get deliveryCost;
  @override
  double get costOfProducts;
  @override
  double get cashOfClient;
  @override
  List<SummaryProduct> get summaryOfProducts;
  @override
  String get additionalAddressDetail;
  @override
  String? get addressOfDelivery;
  @override
  @JsonKey(includeFromJson: false)
  DateTime? get deliveryDate;
  @override
  @JsonKey(ignore: true)
  _$$_SummaryDtoCopyWith<_$_SummaryDto> get copyWith =>
      throw _privateConstructorUsedError;
}

SummaryProduct _$SummaryProductFromJson(Map<String, dynamic> json) {
  return SsummaryProduct.fromJson(json);
}

/// @nodoc
mixin _$SummaryProduct {
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;
  List<SummaryModifier> get modifiers => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummaryProductCopyWith<SummaryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryProductCopyWith<$Res> {
  factory $SummaryProductCopyWith(
          SummaryProduct value, $Res Function(SummaryProduct) then) =
      _$SummaryProductCopyWithImpl<$Res, SummaryProduct>;
  @useResult
  $Res call(
      {String name,
      int quantity,
      double price,
      String comment,
      List<SummaryModifier> modifiers,
      String? image});
}

/// @nodoc
class _$SummaryProductCopyWithImpl<$Res, $Val extends SummaryProduct>
    implements $SummaryProductCopyWith<$Res> {
  _$SummaryProductCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? price = null,
    Object? comment = null,
    Object? modifiers = null,
    Object? image = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      modifiers: null == modifiers
          ? _value.modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<SummaryModifier>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SsummaryProductCopyWith<$Res>
    implements $SummaryProductCopyWith<$Res> {
  factory _$$SsummaryProductCopyWith(
          _$SsummaryProduct value, $Res Function(_$SsummaryProduct) then) =
      __$$SsummaryProductCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int quantity,
      double price,
      String comment,
      List<SummaryModifier> modifiers,
      String? image});
}

/// @nodoc
class __$$SsummaryProductCopyWithImpl<$Res>
    extends _$SummaryProductCopyWithImpl<$Res, _$SsummaryProduct>
    implements _$$SsummaryProductCopyWith<$Res> {
  __$$SsummaryProductCopyWithImpl(
      _$SsummaryProduct _value, $Res Function(_$SsummaryProduct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? price = null,
    Object? comment = null,
    Object? modifiers = null,
    Object? image = freezed,
  }) {
    return _then(_$SsummaryProduct(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
      modifiers: null == modifiers
          ? _value._modifiers
          : modifiers // ignore: cast_nullable_to_non_nullable
              as List<SummaryModifier>,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SsummaryProduct extends SsummaryProduct {
  const _$SsummaryProduct(
      {required this.name,
      required this.quantity,
      required this.price,
      required this.comment,
      required final List<SummaryModifier> modifiers,
      this.image})
      : _modifiers = modifiers,
        super._();

  factory _$SsummaryProduct.fromJson(Map<String, dynamic> json) =>
      _$$SsummaryProductFromJson(json);

  @override
  final String name;
  @override
  final int quantity;
  @override
  final double price;
  @override
  final String comment;
  final List<SummaryModifier> _modifiers;
  @override
  List<SummaryModifier> get modifiers {
    if (_modifiers is EqualUnmodifiableListView) return _modifiers;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_modifiers);
  }

  @override
  final String? image;

  @override
  String toString() {
    return 'SummaryProduct(name: $name, quantity: $quantity, price: $price, comment: $comment, modifiers: $modifiers, image: $image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SsummaryProduct &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price) &&
            (identical(other.comment, comment) || other.comment == comment) &&
            const DeepCollectionEquality()
                .equals(other._modifiers, _modifiers) &&
            (identical(other.image, image) || other.image == image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, quantity, price, comment,
      const DeepCollectionEquality().hash(_modifiers), image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SsummaryProductCopyWith<_$SsummaryProduct> get copyWith =>
      __$$SsummaryProductCopyWithImpl<_$SsummaryProduct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SsummaryProductToJson(
      this,
    );
  }
}

abstract class SsummaryProduct extends SummaryProduct {
  const factory SsummaryProduct(
      {required final String name,
      required final int quantity,
      required final double price,
      required final String comment,
      required final List<SummaryModifier> modifiers,
      final String? image}) = _$SsummaryProduct;
  const SsummaryProduct._() : super._();

  factory SsummaryProduct.fromJson(Map<String, dynamic> json) =
      _$SsummaryProduct.fromJson;

  @override
  String get name;
  @override
  int get quantity;
  @override
  double get price;
  @override
  String get comment;
  @override
  List<SummaryModifier> get modifiers;
  @override
  String? get image;
  @override
  @JsonKey(ignore: true)
  _$$SsummaryProductCopyWith<_$SsummaryProduct> get copyWith =>
      throw _privateConstructorUsedError;
}

SummaryModifier _$SummaryModifierFromJson(Map<String, dynamic> json) {
  return _SummaryModifier.fromJson(json);
}

/// @nodoc
mixin _$SummaryModifier {
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;
  double get price => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SummaryModifierCopyWith<SummaryModifier> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SummaryModifierCopyWith<$Res> {
  factory $SummaryModifierCopyWith(
          SummaryModifier value, $Res Function(SummaryModifier) then) =
      _$SummaryModifierCopyWithImpl<$Res, SummaryModifier>;
  @useResult
  $Res call({String name, int quantity, double price});
}

/// @nodoc
class _$SummaryModifierCopyWithImpl<$Res, $Val extends SummaryModifier>
    implements $SummaryModifierCopyWith<$Res> {
  _$SummaryModifierCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? price = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SummaryModifierCopyWith<$Res>
    implements $SummaryModifierCopyWith<$Res> {
  factory _$$_SummaryModifierCopyWith(
          _$_SummaryModifier value, $Res Function(_$_SummaryModifier) then) =
      __$$_SummaryModifierCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int quantity, double price});
}

/// @nodoc
class __$$_SummaryModifierCopyWithImpl<$Res>
    extends _$SummaryModifierCopyWithImpl<$Res, _$_SummaryModifier>
    implements _$$_SummaryModifierCopyWith<$Res> {
  __$$_SummaryModifierCopyWithImpl(
      _$_SummaryModifier _value, $Res Function(_$_SummaryModifier) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? quantity = null,
    Object? price = null,
  }) {
    return _then(_$_SummaryModifier(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      quantity: null == quantity
          ? _value.quantity
          : quantity // ignore: cast_nullable_to_non_nullable
              as int,
      price: null == price
          ? _value.price
          : price // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SummaryModifier extends _SummaryModifier {
  const _$_SummaryModifier(
      {required this.name, required this.quantity, required this.price})
      : super._();

  factory _$_SummaryModifier.fromJson(Map<String, dynamic> json) =>
      _$$_SummaryModifierFromJson(json);

  @override
  final String name;
  @override
  final int quantity;
  @override
  final double price;

  @override
  String toString() {
    return 'SummaryModifier(name: $name, quantity: $quantity, price: $price)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SummaryModifier &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity) &&
            (identical(other.price, price) || other.price == price));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, quantity, price);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SummaryModifierCopyWith<_$_SummaryModifier> get copyWith =>
      __$$_SummaryModifierCopyWithImpl<_$_SummaryModifier>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SummaryModifierToJson(
      this,
    );
  }
}

abstract class _SummaryModifier extends SummaryModifier {
  const factory _SummaryModifier(
      {required final String name,
      required final int quantity,
      required final double price}) = _$_SummaryModifier;
  const _SummaryModifier._() : super._();

  factory _SummaryModifier.fromJson(Map<String, dynamic> json) =
      _$_SummaryModifier.fromJson;

  @override
  String get name;
  @override
  int get quantity;
  @override
  double get price;
  @override
  @JsonKey(ignore: true)
  _$$_SummaryModifierCopyWith<_$_SummaryModifier> get copyWith =>
      throw _privateConstructorUsedError;
}
