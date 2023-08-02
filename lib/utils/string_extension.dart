
extension StringExtension on String {
  String get removeDashes => replaceAll('-', '');

  String get removeSlashes => replaceAll('/', '');

  String get removeBlankSpaces => replaceAll(' ', '');

  String get replaceSlashesByUnderscores => replaceAll('/', '_');

  String get replaceUnderscoresBySlashes => replaceAll('_', '/');

  String get normalizeStringForApi => capitalize.replaceAll(RegExp(r'[/\s]'), '_');

  /// Extract the day from a date with String type and MM/DD/YYYY format
  String get extractDayFromString => substring(3, 5);

  /// Extract the month from a date with String type and MM/DD/YYYY format
  String get extractMonthFromString => substring(0, 2);

  /// Extract the year from a date with String type and MM/DD/YYYY format
  String get extractYearFromString => substring(6);

  String get capitalize => '${substring(0, 1).toUpperCase()}${substring(1).toLowerCase()}';

  String get formatPhone {
    final noDashesText = removeDashes;
    String formattedText = noDashesText.replaceAllMapped(RegExp(r'.{3}'), (match) => '${match.group(0)}-');
    if (formattedText.length > 11) {
      formattedText = formattedText.replaceRange(11, 12, '');
    }
    return formattedText;
  }

  String get inCaps =>
      this.length > 0 ? '${this[0].toUpperCase()}${this.substring(1)}' : '';

  String get capitalizeFirsTofEach => this.toLowerCase()
      .replaceAll(RegExp(' +'), ' ')
      .split(" ")
      .map((str) => str.inCaps)
      .join(" ");
}
