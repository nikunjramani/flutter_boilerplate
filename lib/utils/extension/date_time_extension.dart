import 'package:intl/intl.dart' show DateFormat;

extension DateTimeExtension on String {
  String get timeInHourMinute => DateFormat('jm').format(DateTime.parse(this));

  String get timeInMonthHourMinute => '${DateFormat.MMMMd().format(DateTime.parse(this))}, $timeInHourMinute';

  String get timeInDayMonthYear => DateFormat('EEEE H:m d MMM y').format( DateTime.parse(this));

}
