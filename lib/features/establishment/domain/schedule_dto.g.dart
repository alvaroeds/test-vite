// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'schedule_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Schedule _$$_ScheduleFromJson(Map<String, dynamic> json) => _$_Schedule(
      lunes: json['lunes'] == null
          ? null
          : Day.fromJson(json['lunes'] as Map<String, dynamic>),
      martes: json['martes'] == null
          ? null
          : Day.fromJson(json['martes'] as Map<String, dynamic>),
      miercoles: json['miercoles'] == null
          ? null
          : Day.fromJson(json['miercoles'] as Map<String, dynamic>),
      jueves: json['jueves'] == null
          ? null
          : Day.fromJson(json['jueves'] as Map<String, dynamic>),
      viernes: json['viernes'] == null
          ? null
          : Day.fromJson(json['viernes'] as Map<String, dynamic>),
      sabado: json['sabado'] == null
          ? null
          : Day.fromJson(json['sabado'] as Map<String, dynamic>),
      domingo: json['domingo'] == null
          ? null
          : Day.fromJson(json['domingo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ScheduleToJson(_$_Schedule instance) =>
    <String, dynamic>{
      'lunes': instance.lunes,
      'martes': instance.martes,
      'miercoles': instance.miercoles,
      'jueves': instance.jueves,
      'viernes': instance.viernes,
      'sabado': instance.sabado,
      'domingo': instance.domingo,
    };

_$_Day _$$_DayFromJson(Map<String, dynamic> json) => _$_Day(
      state: json['state'] as bool,
      hours: (json['hours'] as List<dynamic>?)
              ?.map((e) => Hour.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_DayToJson(_$_Day instance) => <String, dynamic>{
      'state': instance.state,
      'hours': instance.hours,
    };

_$_Hour _$$_HourFromJson(Map<String, dynamic> json) => _$_Hour(
      start: json['start'] as String,
      finish: json['finish'] as String,
      startMiliseconds: json['startMiliseconds'] as int,
      finishMiliseconds: json['finishMiliseconds'] as int,
    );

Map<String, dynamic> _$$_HourToJson(_$_Hour instance) => <String, dynamic>{
      'start': instance.start,
      'finish': instance.finish,
      'startMiliseconds': instance.startMiliseconds,
      'finishMiliseconds': instance.finishMiliseconds,
    };
