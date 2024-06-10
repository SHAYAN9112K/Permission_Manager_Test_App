import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';

class AndroidVersionChecker {
  static final DeviceInfoPlugin _deviceInfo = DeviceInfoPlugin();

  static Future<int> getAndroidSdkVersion() async {
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await _deviceInfo.androidInfo;
      return androidInfo.version.sdkInt;
    } else {
      // Return -1 or handle accordingly for non-Android platforms
      return -1;
    }
  }
}
