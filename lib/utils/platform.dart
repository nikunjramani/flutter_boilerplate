import 'package:flutter/foundation.dart';

class GetCurrentPlatform{

  static bool get isWeb =>kIsWeb;

  static bool get isWindows => defaultTargetPlatform == TargetPlatform.windows && !kIsWeb;
  static bool get isMacOS => defaultTargetPlatform == TargetPlatform.macOS&& !kIsWeb;
  static bool get isAndroid => defaultTargetPlatform == TargetPlatform.android;
  static bool get isIOS => defaultTargetPlatform == TargetPlatform.iOS;
  static bool get isLinux => defaultTargetPlatform == TargetPlatform.linux&& !kIsWeb;

}