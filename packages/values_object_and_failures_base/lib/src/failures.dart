import 'dart:async';
import 'dart:io';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
part 'failures.freezed.dart';

@freezed
class ValueFailure<T> with _$ValueFailure<T> {
  const factory ValueFailure.characterLimitExceeded({required T failedValue}) = CharacterLimitExceeded<T>;
  const factory ValueFailure.emptyOrNullCharacters({required T failedValue}) = EmptyOrNullCharacters<T>;
  const factory ValueFailure.invalidFormat({required T failedValue}) = InvalidFormat<T>;
}

@freezed
class GlobalFailure<F> with _$GlobalFailure<F> {
  const factory GlobalFailure.serverError(F failure) = ServerError<F>;
  const factory GlobalFailure.notConnection() = NotConnection<F>;
  const factory GlobalFailure.timeOutExceeded() = TimeOutExceeded<F>;
  const factory GlobalFailure.internalError(dynamic err, [StackTrace? st]) = LocalError<F>;

  // ignore: avoid_positional_boolean_parameters
  factory GlobalFailure.fromException(Object err, [StackTrace? st, bool isDebugMode = false]) {
    if (err is SocketException) return GlobalFailure<F>.notConnection();

    if (err is TimeoutException) return GlobalFailure<F>.timeOutExceeded();

    if (isDebugMode) Logger().e('Exception Failure', err, st);

    return GlobalFailure<F>.internalError(err, st);
  }
}
