import 'package:intl/intl.dart';

extension SniffleDateExtension on DateTime {
  static final _dayHourFormat = DateFormat('EEEE, h:mm a');
  static final _dayMonth = DateFormat('EEEE, MMMM d');
  static final _onlyDay = DateFormat('EEEE');
  static final _monthYear = DateFormat('MMMM yyyy');
  static final _monthDayYear = DateFormat('MMMM d, yyyy');
  static final _monthDay = DateFormat('MMM, d');
  static final _hour = DateFormat('h:mm a');
  static final _hourMin = DateFormat('h:mm');
  static final _hourWithOut = DateFormat('h:mm a');
  static final _format = DateFormat('MM/dd/yyyy');
  static final _dateYearFirst = DateFormat('yyyy/MM/dd');
  static final _formatMonthWithDayYearAndHour = DateFormat('MMMM d, yyyy \nh:mm a');

  String get dayWithHour => _dayHourFormat.format(toLocal());
  String get dayWithMonth => _dayMonth.format(toLocal());
  String get onlyDay => _onlyDay.format(toLocal());
  String get monthWithYear => _monthYear.format(toLocal());
  String get monthWithDayWithYear => _monthDayYear.format(toLocal());
  String get monthWithDay => _monthDay.format(toLocal());
  String get toHour => _hour.format(toLocal());
  String get hourWithOut => _hourWithOut.format(toLocal());
  String get hourMin => _hourMin.format(toLocal());
  String get hourMinUtc => '$hour:$minute';
  String get formatDate => _format.format(toLocal());
  bool get ready => difference(DateTime.now().toUtc()).isNegative;
  double get age => DateTime.now().difference(this).inDays / 365;
  String get yearFirst => _dateYearFirst.format(toLocal());
  String get monthWithDayYearAndHour => _formatMonthWithDayYearAndHour.format(toLocal());
  DateTime get lastTimeDay => subtract(const Duration(seconds: 1));
  DateTime get nextDay => add(const Duration(days: 1));
  DateTime get previousDay => subtract(const Duration(days: 1));

  int get diffInDays => DateTime.now().difference(this).inDays;

  String get timeZone => timeZoneOffset.inHours.toString().padLeft(2, '0');

  DateTime get initialDateTimePicker {
    var minutes = minute.toString();
    if (minutes.length == 1) minutes = '0$minutes';
    final data = double.parse('${minutes[0]}.${minutes[1]}');
    return DateTime(year, month, day, hour, int.parse('${data.round()}0'));
  }

  bool get showCounter {
    final seconds = difference(DateTime.now().toUtc()).inSeconds;
    return seconds > 0 && seconds <= 600;
  }

  bool get isToday {
    final now = DateTime.now().toUtc();
    final today = DateTime(now.year, now.month, now.day);
    return today == DateTime(year, month, day);
  }

  bool get isYesterday {
    final now = DateTime.now().toUtc();
    final yesterday = DateTime(now.year, now.month, now.day).subtract(const Duration(days: 1));
    return yesterday == DateTime(year, month, day);
  }

}
