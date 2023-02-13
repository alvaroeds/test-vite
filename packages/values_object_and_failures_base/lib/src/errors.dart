import 'package:values_object_and_failures_base/values_object_and_failures_base.dart';

///
class UnexpectedValueError extends Error {
  /// @nodoc
  UnexpectedValueError(this.valueFailure);

  /// @nodoc
  final ValueFailure<dynamic> valueFailure;

  @override
  String toString() {
    const explanation = 'Encountered a ValueFailure at an unrecoverable point. Terminating.';
    return '''
 -------  ERROR:  ---------------------------------------------------------------------------------------------
     $explanation | $valueFailure
 --------------------------------------------------------------------------------------------------------------
    ''';
  }
}
