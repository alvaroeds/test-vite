// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'establishment_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EstablishmentDto _$$_EstablishmentDtoFromJson(Map<String, dynamic> json) =>
    _$_EstablishmentDto(
      name: json['name'] as String,
      schedule: Schedule.fromJson(json['schedule'] as Map<String, dynamic>),
      idUrl: json['id_url'] as String,
      bannerUrl: json['banner_url'] as String,
      profileImage: json['profile_image'] as String,
      description: json['description'] as String? ?? '',
      socialNetwork: (json['social_network'] as List<dynamic>?)
              ?.map((e) => SocialNetworkDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      modifiers: json['modifiers'] == null
          ? const Modifiers()
          : Modifiers.fromJson(json['modifiers'] as Map<String, dynamic>),
      categories: (json['categories'] as List<dynamic>?)
              ?.map((e) => CategoriesDto.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_EstablishmentDtoToJson(_$_EstablishmentDto instance) =>
    <String, dynamic>{
      'name': instance.name,
      'schedule': instance.schedule,
      'id_url': instance.idUrl,
      'banner_url': instance.bannerUrl,
      'profile_image': instance.profileImage,
      'description': instance.description,
      'social_network': instance.socialNetwork,
      'modifiers': instance.modifiers,
      'categories': instance.categories,
    };
