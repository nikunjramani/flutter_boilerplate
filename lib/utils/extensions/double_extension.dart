extension SniffleDoubleExtension on double {
  String get withTwoDecimalPoints => toStringAsFixed(truncateToDouble() == this ? 0 : 2);
}
