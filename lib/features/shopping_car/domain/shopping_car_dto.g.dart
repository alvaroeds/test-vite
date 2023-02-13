// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shopping_car_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShopppingCarDto _$$_ShopppingCarDtoFromJson(Map<String, dynamic> json) =>
    _$_ShopppingCarDto(
      uuid: json['uuid'] as String,
      items: (json['items'] as List<dynamic>?)
              ?.map((e) => ItemCar.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ShopppingCarDtoToJson(_$_ShopppingCarDto instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'items': instance.items,
    };

_$_ItemCar _$$_ItemCarFromJson(Map<String, dynamic> json) => _$_ItemCar(
      uuidProduct: json['uuidProduct'] as String,
      amount: json['amount'] as int,
      uuidsExtras: (json['uuidsExtras'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      uuidsOptionsFood: (json['uuidsOptionsFood'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ItemCarToJson(_$_ItemCar instance) =>
    <String, dynamic>{
      'uuidProduct': instance.uuidProduct,
      'amount': instance.amount,
      'uuidsExtras': instance.uuidsExtras,
      'uuidsOptionsFood': instance.uuidsOptionsFood,
    };
