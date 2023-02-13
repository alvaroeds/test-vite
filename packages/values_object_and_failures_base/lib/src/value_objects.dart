// ignore_for_file: avoid_renaming_method_parameters

// 📦 Package imports:
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

// 🌎 Project imports:

@immutable
abstract class ValueObject<T> {
  // ignore: public_member_api_docs
  const ValueObject();
  Either<ValueFailure<T?>, T> get value;

  T getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  ValueFailure<T?> getErrorOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold(id, (e) => throw UnexpectedValueError(ValueFailure.invalidFormat(failedValue: e)));
  }

  bool isValid() => value.isRight();
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}

@immutable
abstract class ValueObjectOption<T> {
  const ValueObjectOption();
  Either<ValueFailure<T>, Option<T>> get value;

  Option<T> getOrCrash() {
    // id = identity - same as writing (right) => right
    return value.fold((f) => throw UnexpectedValueError(f), id);
  }

  bool isValid() => value.isRight();

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;
    return o is ValueObjectOption<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  @override
  String toString() => 'Value($value)';
}
