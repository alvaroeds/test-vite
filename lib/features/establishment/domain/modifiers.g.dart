// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'modifiers.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Modifiers _$$_ModifiersFromJson(Map<String, dynamic> json) => _$_Modifiers(
      chooseForAmount: (json['chooseForAmount'] as List<dynamic>?)
              ?.map((e) => ChooseForAmount.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      oneSelection: (json['oneSelection'] as List<dynamic>?)
              ?.map((e) => OneSelection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      multipleSelection: (json['multipleSelection'] as List<dynamic>?)
              ?.map(
                  (e) => MultipleSelection.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ModifiersToJson(_$_Modifiers instance) =>
    <String, dynamic>{
      'chooseForAmount': instance.chooseForAmount,
      'oneSelection': instance.oneSelection,
      'multipleSelection': instance.multipleSelection,
    };

_$_ChooseForAmount _$$_ChooseForAmountFromJson(Map<String, dynamic> json) =>
    _$_ChooseForAmount(
      maximumQuantity: json['maximumQuantity'] as int,
      minimumQuantity: json['minimumQuantity'] as int? ?? 0,
      uuid: json['uuid'] as String? ?? '',
      name: json['name'] as String? ?? '',
      extras: (json['extras'] as List<dynamic>?)
              ?.map((e) => ExtraFood.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ChooseForAmountToJson(_$_ChooseForAmount instance) =>
    <String, dynamic>{
      'maximumQuantity': instance.maximumQuantity,
      'minimumQuantity': instance.minimumQuantity,
      'uuid': instance.uuid,
      'name': instance.name,
      'extras': instance.extras,
    };

_$_ExtraFood _$$_ExtraFoodFromJson(Map<String, dynamic> json) => _$_ExtraFood(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      limit: json['limit'] as int,
      uuid: json['uuid'] as String? ?? '',
    );

Map<String, dynamic> _$$_ExtraFoodToJson(_$_ExtraFood instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'limit': instance.limit,
      'uuid': instance.uuid,
    };

_$_OneSelection _$$_OneSelectionFromJson(Map<String, dynamic> json) =>
    _$_OneSelection(
      isRequired: json['isRequired'] as bool,
      name: json['name'] as String,
      uuid: json['uuid'] as String? ?? '',
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => OptionFood.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_OneSelectionToJson(_$_OneSelection instance) =>
    <String, dynamic>{
      'isRequired': instance.isRequired,
      'name': instance.name,
      'uuid': instance.uuid,
      'options': instance.options,
    };

_$_OptionFood _$$_OptionFoodFromJson(Map<String, dynamic> json) =>
    _$_OptionFood(
      name: json['name'] as String,
      price: (json['price'] as num).toDouble(),
      uuid: json['uuid'] as String? ?? '',
    );

Map<String, dynamic> _$$_OptionFoodToJson(_$_OptionFood instance) =>
    <String, dynamic>{
      'name': instance.name,
      'price': instance.price,
      'uuid': instance.uuid,
    };

_$_MultipleSelection _$$_MultipleSelectionFromJson(Map<String, dynamic> json) =>
    _$_MultipleSelection(
      name: json['name'] as String,
      maximumLimit: json['maximumLimit'] as int,
      minimumLimit: json['minimumLimit'] as int? ?? 0,
      uuid: json['uuid'] as String? ?? '',
      options: (json['options'] as List<dynamic>?)
              ?.map((e) => OptionFood.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_MultipleSelectionToJson(
        _$_MultipleSelection instance) =>
    <String, dynamic>{
      'name': instance.name,
      'maximumLimit': instance.maximumLimit,
      'minimumLimit': instance.minimumLimit,
      'uuid': instance.uuid,
      'options': instance.options,
    };
