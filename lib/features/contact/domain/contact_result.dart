import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

part 'contact_result.freezed.dart';

@freezed
class ContactResult with _$ContactResult {
  const ContactResult._();
  const factory ContactResult.succes(Unit unit) = Success;
  const factory ContactResult.formError(ValueFailure<String> failure) =
      FormError;
  const factory ContactResult.notSucces(GlobalFailure<dynamic> err) =
      NotSuccess;

  bool get isSuccess => maybeWhen(succes: (_) => true, orElse: () => false);
}
