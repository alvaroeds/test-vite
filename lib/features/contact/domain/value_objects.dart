import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

@immutable
class EmailAddress extends ValueObject<String> {
  static const maxLength = 120;
  static const emailRegex =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  @override
  final Either<ValueFailure<String>, String> value;

  factory EmailAddress(String input) =>
      EmailAddress._(validateEmailAddress(input.trim()));

  const EmailAddress._(this.value);

  static Either<ValueFailure<String>, String> validateEmailAddress(
      String input) {
    if (input.isEmpty) {
      return left(ValueFailure.emptyOrNullCharacters(failedValue: input));
    }

    if (input.length > maxLength) {
      return left(ValueFailure.characterLimitExceeded(failedValue: input));
    }

    if (!RegExp(emailRegex).hasMatch(input)) {
      return left(ValueFailure.invalidFormat(failedValue: input));
    }

    return right(input);
  }
}

@immutable
class EstablishmentName extends ValueObject<String> {
  static const int maxLength = 30;

  static const int minLength = 4;
  @override
  final Either<ValueFailure<String>, String> value;

  factory EstablishmentName(String input) {
    return EstablishmentName._(validateEstablishmentName(input.trim()));
  }

  const EstablishmentName._(this.value);
  static Either<ValueFailure<String>, String> validateEstablishmentName(
      String input) {
    if (input.isEmpty) {
      return left(ValueFailure.emptyOrNullCharacters(failedValue: input));
    }
    // You can also add some advanced password checks (uppercase/lowercase, at least 1 number, ...)
    if (input.length < minLength) {
      return left(ValueFailure.emptyOrNullCharacters(failedValue: input));
    }

    if (input.length > maxLength) {
      return left(ValueFailure.characterLimitExceeded(failedValue: input));
    }

    return right(input);
  }
}
