extension DateTimeExtensions on DateTime {
  /// Returns a formatted string in 'YYYY-MM-DD' format
  String get toFormattedString => "${year.toString().padLeft(4, '0')}-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}";

  /// Returns whether the current DateTime is today
  bool get isToday {
    final now = DateTime.now();
    return year == now.year && month == now.month && day == now.day;
  }

  /// Returns whether the current DateTime is in the past
  bool get isPast => isBefore(DateTime.now());

  /// Returns whether the current DateTime is in the future
  bool get isFuture => isAfter(DateTime.now());

  /// Returns a new DateTime instance representing the start of the day
  DateTime get startOfDay => DateTime(year, month, day);

  /// Returns a new DateTime instance representing the end of the day
  DateTime get endOfDay => DateTime(year, month, day, 23, 59, 59, 999);

  /// Returns the difference in days between this date and another date
  int daysDifference(DateTime other) => difference(other).inDays.abs();

  /// Returns the week number of the current date
  int get weekNumber {
    final firstDayOfYear = DateTime(year, 1, 1);
    return ((difference(firstDayOfYear).inDays + firstDayOfYear.weekday) / 7).ceil();
  }

  /// Returns whether this date is a weekend
  bool get isWeekend => weekday == DateTime.saturday || weekday == DateTime.sunday;

  /// Returns whether this date is a weekday
  bool get isWeekday => !isWeekend;

  /// Adds a specific number of days and returns the new DateTime
  DateTime addDays(int days) => add(Duration(days: days));

  /// Subtracts a specific number of days and returns the new DateTime
  DateTime subtractDays(int days) => subtract(Duration(days: days));

  /// Checks if this date is within a given range (inclusive)
  bool isBetween(DateTime start, DateTime end) => isAfter(start) && isBefore(end);
}
