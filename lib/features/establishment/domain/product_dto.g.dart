// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ProductDto _$$_ProductDtoFromJson(Map<String, dynamic> json) =>
    _$_ProductDto(
      description: json['description'] as String,
      name: json['name'] as String,
      state: json['state'] as String,
      discount: (json['discount'] as num).toDouble(),
      price: (json['price'] as num).toDouble(),
      uuid: json['uuid'] as String? ?? '',
      dateOnAdd: json['dateOnAdd'] as int? ?? 0,
      images: (json['images'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      chooseForAmountUuids: (json['chooseForAmountUuids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      oneSelectionUuids: (json['oneSelectionUuids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      multipleSelectionUuids: (json['multipleSelectionUuids'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ProductDtoToJson(_$_ProductDto instance) =>
    <String, dynamic>{
      'description': instance.description,
      'name': instance.name,
      'state': instance.state,
      'discount': instance.discount,
      'price': instance.price,
      'uuid': instance.uuid,
      'dateOnAdd': instance.dateOnAdd,
      'images': instance.images,
      'chooseForAmountUuids': instance.chooseForAmountUuids,
      'oneSelectionUuids': instance.oneSelectionUuids,
      'multipleSelectionUuids': instance.multipleSelectionUuids,
    };

_$_CategoriesDto _$$_CategoriesDtoFromJson(Map<String, dynamic> json) =>
    _$_CategoriesDto(
      name: json['name'] as String,
      state: json['state'] as String,
      uuid: json['uuid'] as String? ?? '',
      products: (json['products'] as List<dynamic>?)
              ?.map((e) => ProductDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_CategoriesDtoToJson(_$_CategoriesDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'state': instance.state,
      'uuid': instance.uuid,
      'products': instance.products,
    };
