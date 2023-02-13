import 'package:freezed_annotation/freezed_annotation.dart';

part 'schedule_dto.freezed.dart';
part 'schedule_dto.g.dart';

@freezed
class Schedule with _$Schedule {
  const factory Schedule({
    Day? lunes,
    Day? martes,
    Day? miercoles,
    Day? jueves,
    Day? viernes,
    Day? sabado,
    Day? domingo,
  }) = _Schedule;

  factory Schedule.fromJson(Map<String, dynamic> json) =>
      _$ScheduleFromJson(json);
}

@freezed
class Day with _$Day {
  const factory Day({
    required bool state,
    @Default([]) List<Hour> hours,
  }) = _Day;
  factory Day.fromJson(Map<String, dynamic> json) => _$DayFromJson(json);
}

@freezed
class Hour with _$Hour {
  const factory Hour({
    required String start,
    required String finish,
    required int startMiliseconds,
    required int finishMiliseconds,
  }) = _Hour;
  factory Hour.fromJson(Map<String, dynamic> json) => _$HourFromJson(json);
}
