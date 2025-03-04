import 'package:permission_handler/permission_handler.dart';

class PermissionManager {
  /// Requests a single permission and returns whether it was granted
  static Future<bool> requestPermission(Permission permission) async {
    final status = await permission.request();
    return status == PermissionStatus.granted;
  }

  /// Requests multiple permissions and returns a map of their statuses
  static Future<Map<Permission, PermissionStatus>> requestPermissions(List<Permission> permissions) async {
    return await permissions.request();
  }

  /// Checks if a specific permission is granted
  static Future<bool> isPermissionGranted(Permission permission) async {
    return await permission.status == PermissionStatus.granted;
  }

  /// Opens the app settings to allow the user to manually grant permissions
  static Future<void> openAppSettings() async {
    await openAppSettings();
  }

  /// Requests camera permission
  static Future<bool> requestCameraPermission() => requestPermission(Permission.camera);

  /// Checks camera permission
  static Future<bool> isCameraPermissionGranted() => isPermissionGranted(Permission.camera);

  /// Requests microphone permission
  static Future<bool> requestMicrophonePermission() => requestPermission(Permission.microphone);

  /// Checks microphone permission
  static Future<bool> isMicrophonePermissionGranted() => isPermissionGranted(Permission.microphone);

  /// Requests location permission
  static Future<bool> requestLocationPermission() => requestPermission(Permission.location);

  /// Checks location permission
  static Future<bool> isLocationPermissionGranted() => isPermissionGranted(Permission.location);

  /// Requests location when in use permission
  static Future<bool> requestLocationWhenInUsePermission() => requestPermission(Permission.locationWhenInUse);

  /// Checks location when in use permission
  static Future<bool> isLocationWhenInUsePermissionGranted() => isPermissionGranted(Permission.locationWhenInUse);

  /// Requests location always permission
  static Future<bool> requestLocationAlwaysPermission() => requestPermission(Permission.locationAlways);

  /// Checks location always permission
  static Future<bool> isLocationAlwaysPermissionGranted() => isPermissionGranted(Permission.locationAlways);

  /// Requests storage permission
  static Future<bool> requestStoragePermission() => requestPermission(Permission.storage);

  /// Checks storage permission
  static Future<bool> isStoragePermissionGranted() => isPermissionGranted(Permission.storage);

  /// Requests photos permission
  static Future<bool> requestPhotosPermission() => requestPermission(Permission.photos);

  /// Checks photos permission
  static Future<bool> isPhotosPermissionGranted() => isPermissionGranted(Permission.photos);

  /// Requests contacts permission
  static Future<bool> requestContactsPermission() => requestPermission(Permission.contacts);

  /// Checks contacts permission
  static Future<bool> isContactsPermissionGranted() => isPermissionGranted(Permission.contacts);

  /// Requests SMS permission
  static Future<bool> requestSmsPermission() => requestPermission(Permission.sms);

  /// Checks SMS permission
  static Future<bool> isSmsPermissionGranted() => isPermissionGranted(Permission.sms);

  /// Requests phone permission
  static Future<bool> requestPhonePermission() => requestPermission(Permission.phone);

  /// Checks phone permission
  static Future<bool> isPhonePermissionGranted() => isPermissionGranted(Permission.phone);

  /// Requests Bluetooth permission
  static Future<bool> requestBluetoothPermission() => requestPermission(Permission.bluetooth);

  /// Checks Bluetooth permission
  static Future<bool> isBluetoothPermissionGranted() => isPermissionGranted(Permission.bluetooth);

  /// Requests sensors permission
  static Future<bool> requestSensorsPermission() => requestPermission(Permission.sensors);

  /// Checks sensors permission
  static Future<bool> isSensorsPermissionGranted() => isPermissionGranted(Permission.sensors);

  /// Requests common mobile permissions
  static Future<void> requestCommonPermissions() async {
    await requestPermissions([
      Permission.camera,
      Permission.microphone,
      Permission.location,
      Permission.locationWhenInUse,
      Permission.locationAlways,
      Permission.storage,
      Permission.photos,
      Permission.contacts,
      Permission.sms,
      Permission.phone,
      Permission.bluetooth,
      Permission.sensors,
    ]);
  }
}
