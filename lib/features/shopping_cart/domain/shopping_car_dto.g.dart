// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_car_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShoppingCartDto _$$_ShoppingCartDtoFromJson(Map<String, dynamic> json) =>
    _$_ShoppingCartDto(
      urlId: json['urlId'] as String,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ItemCart.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ShoppingCartDtoToJson(_$_ShoppingCartDto instance) =>
    <String, dynamic>{
      'urlId': instance.urlId,
      'items': instance.items,
    };

_$_ItemCar _$$_ItemCarFromJson(Map<String, dynamic> json) => _$_ItemCar(
      product: ProductDto.fromJson(json['product'] as Map<String, dynamic>),
      uuid: json['uuid'] as String,
      quantity: json['quantity'] as int,
      comment: json['comment'] as String? ?? '',
      extrasFood: (json['extrasFood'] as List<dynamic>?)
              ?.map((e) => AmountExtraFood.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      optionsFoodOneSelection: (json['optionsFoodOneSelection']
                  as List<dynamic>?)
              ?.map((e) => AmountOptionFood.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      optionsFoodForMultiple: (json['optionsFoodForMultiple'] as List<dynamic>?)
              ?.map((e) => AmountOptionFood.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ItemCarToJson(_$_ItemCar instance) =>
    <String, dynamic>{
      'product': instance.product,
      'uuid': instance.uuid,
      'quantity': instance.quantity,
      'comment': instance.comment,
      'extrasFood': instance.extrasFood,
      'optionsFoodOneSelection': instance.optionsFoodOneSelection,
      'optionsFoodForMultiple': instance.optionsFoodForMultiple,
    };

_$_AmountExtraFood _$$_AmountExtraFoodFromJson(Map<String, dynamic> json) =>
    _$_AmountExtraFood(
      extraFood: ExtraFood.fromJson(json['extraFood'] as Map<String, dynamic>),
      uuidModifier: json['uuidModifier'] as String,
      quantity: json['quantity'] as int,
    );

Map<String, dynamic> _$$_AmountExtraFoodToJson(_$_AmountExtraFood instance) =>
    <String, dynamic>{
      'extraFood': instance.extraFood,
      'uuidModifier': instance.uuidModifier,
      'quantity': instance.quantity,
    };

_$_AmountOptionFood _$$_AmountOptionFoodFromJson(Map<String, dynamic> json) =>
    _$_AmountOptionFood(
      optionFood:
          OptionFood.fromJson(json['optionFood'] as Map<String, dynamic>),
      uuidModifier: json['uuidModifier'] as String,
    );

Map<String, dynamic> _$$_AmountOptionFoodToJson(_$_AmountOptionFood instance) =>
    <String, dynamic>{
      'optionFood': instance.optionFood,
      'uuidModifier': instance.uuidModifier,
    };
