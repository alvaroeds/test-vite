import 'package:intl/intl.dart';

extension DateFormats on DateTime {
  String get dateFormat => DateFormat('dd/MM/yyyy').format(this);

  String get timeFormat => DateFormat('hh:mm a').format(this).toLowerCase();
}
