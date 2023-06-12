// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserDto _$$_UserDtoFromJson(Map<String, dynamic> json) => _$_UserDto(
      uuid: json['uuid'] as String,
      name: json['name'] as String? ?? '',
      phone: json['phone'] as String? ?? '',
      addresses: (json['addresses'] as List<dynamic>?)
              ?.map((e) => AddressDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const <AddressDto>[],
      ordersAvailables: (json['ordersAvailables'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const <String>[],
    );

Map<String, dynamic> _$$_UserDtoToJson(_$_UserDto instance) =>
    <String, dynamic>{
      'uuid': instance.uuid,
      'name': instance.name,
      'phone': instance.phone,
      'addresses': instance.addresses,
      'ordersAvailables': instance.ordersAvailables,
    };
