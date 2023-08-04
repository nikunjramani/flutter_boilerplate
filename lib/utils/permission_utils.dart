import 'package:permission_handler/permission_handler.dart';

class PermissionUtils{

  static Future<bool> requestCameraPermission() async {
    return await Permission.camera.request().isGranted;
  }
  static Future<bool> requestMicrophonePermission() async {
    return await Permission.microphone.request().isGranted;
  }
  static Future<bool> requestContactPermission() async {
    return await Permission.contacts.request().isGranted;
  }
  static Future<bool> requestStoragePermission() async {
    return await Permission.storage.request().isGranted;
  }

  static Future<bool> requestPhotosPermission() async {
    return await Permission.photos.request().isGranted;
  }

  static Future<bool> requestSMSPermission() async {
    return await Permission.sms.request().isGranted;
  }

  static Future<bool> requestCalendarPermission() async {
    return await Permission.calendar.request().isGranted;
  }
}