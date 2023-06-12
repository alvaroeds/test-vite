// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'summary_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SummaryDto _$$_SummaryDtoFromJson(Map<String, dynamic> json) =>
    _$_SummaryDto(
      nroOrder: json['nroOrder'] as String,
      establishmentId: json['establishmentId'] as String,
      establishmentAddress: json['establishmentAddress'] as String,
      establishmentHost: json['establishmentHost'] as String,
      clientPhone: json['clientPhone'] as String,
      clientName: json['clientName'] as String,
      methodOfPayment: json['methodOfPayment'] as String,
      deliveryDateOnMilliseconds: json['deliveryDateOnMilliseconds'] as int,
      deliveryCost: (json['deliveryCost'] as num).toDouble(),
      costOfProducts: (json['costOfProducts'] as num).toDouble(),
      cashOfClient: (json['cashOfClient'] as num).toDouble(),
      summaryOfProducts: (json['summaryOfProducts'] as List<dynamic>)
          .map((e) => SummaryProduct.fromJson(e as Map<String, dynamic>))
          .toList(),
      additionalAddressDetail: json['additionalAddressDetail'] as String? ?? '',
      addressOfDelivery: json['addressOfDelivery'] as String?,
    );

Map<String, dynamic> _$$_SummaryDtoToJson(_$_SummaryDto instance) =>
    <String, dynamic>{
      'nroOrder': instance.nroOrder,
      'establishmentId': instance.establishmentId,
      'establishmentAddress': instance.establishmentAddress,
      'establishmentHost': instance.establishmentHost,
      'clientPhone': instance.clientPhone,
      'clientName': instance.clientName,
      'methodOfPayment': instance.methodOfPayment,
      'deliveryDateOnMilliseconds': instance.deliveryDateOnMilliseconds,
      'deliveryCost': instance.deliveryCost,
      'costOfProducts': instance.costOfProducts,
      'cashOfClient': instance.cashOfClient,
      'summaryOfProducts': instance.summaryOfProducts,
      'additionalAddressDetail': instance.additionalAddressDetail,
      'addressOfDelivery': instance.addressOfDelivery,
    };

_$SsummaryProduct _$$SsummaryProductFromJson(Map<String, dynamic> json) =>
    _$SsummaryProduct(
      name: json['name'] as String,
      quantity: json['quantity'] as int,
      price: (json['price'] as num).toDouble(),
      comment: json['comment'] as String,
      modifiers: (json['modifiers'] as List<dynamic>)
          .map((e) => SummaryModifier.fromJson(e as Map<String, dynamic>))
          .toList(),
      image: json['image'] as String?,
    );

Map<String, dynamic> _$$SsummaryProductToJson(_$SsummaryProduct instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'price': instance.price,
      'comment': instance.comment,
      'modifiers': instance.modifiers,
      'image': instance.image,
    };

_$_SummaryModifier _$$_SummaryModifierFromJson(Map<String, dynamic> json) =>
    _$_SummaryModifier(
      name: json['name'] as String,
      quantity: json['quantity'] as int,
      price: (json['price'] as num).toDouble(),
    );

Map<String, dynamic> _$$_SummaryModifierToJson(_$_SummaryModifier instance) =>
    <String, dynamic>{
      'name': instance.name,
      'quantity': instance.quantity,
      'price': instance.price,
    };
