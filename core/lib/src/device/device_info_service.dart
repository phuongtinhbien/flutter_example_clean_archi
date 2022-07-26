import 'dart:io';

import 'package:core/src/data/constants/sharef_key.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:get_storage/get_storage.dart';

class DeviceInfoService {
  final BaseDeviceInfo deviceInfo;

  final String deviceId;

  final String userAgent;

  DeviceInfoService(this.deviceInfo, this.deviceId, this.userAgent);

  static Future<DeviceInfoService> init() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    final deviceInfo = await deviceInfoPlugin.deviceInfo;

    final deviceId = await getDeviceId(deviceInfo);

    final userAgent = genUserAgent(deviceInfo);
    return DeviceInfoService(deviceInfo, deviceId, userAgent);
  }

  /// Returns device information for the current platform.
  String? get deviceName {
    if (Platform.isAndroid) {
      return (deviceInfo as AndroidDeviceInfo).host;
    } else if (Platform.isIOS) {
      return (deviceInfo as IosDeviceInfo).name;
    }
    throw UnsupportedError('Unsupported platform');
  }

  static String genUserAgent(BaseDeviceInfo deviceInfo) {
    const keyStorage = 'user_agent';
    var userAgent = '';
    if (Platform.isAndroid) {
      final androidInfo = deviceInfo as AndroidDeviceInfo;
      final release = androidInfo.version.release;
      final sdkInt = androidInfo.version.sdkInt;
      final manufacturer = androidInfo.manufacturer;
      final model = androidInfo.model;

      userAgent = 'Android $release(SDK $sdkInt)-$manufacturer-$model';
    } else {
      final iosInfo = deviceInfo as IosDeviceInfo;
      final systemName = iosInfo.systemName;
      final version = iosInfo.systemVersion;
      final name = iosInfo.name;
      userAgent = '$systemName $version-Apple-$name';
    }
    GetStorage(SharefKey.APP_DATA).write(keyStorage, userAgent);
    return userAgent;
  }

  static Future<String> getDeviceId(BaseDeviceInfo deviceInfo) async {
    const keyStorage = 'device_id';
    var value = GetStorage(SharefKey.APP_DATA).read(keyStorage) ?? '';
    if (value.isNotEmpty) {
      return value;
    } else {
      if (Platform.isIOS) {
        final iosDeviceInfo = deviceInfo as IosDeviceInfo;
        value = iosDeviceInfo.identifierForVendor ?? '';
      } else {
        final androidDeviceInfo = deviceInfo as AndroidDeviceInfo;
        value = androidDeviceInfo.androidId ?? '';
      }
      await GetStorage(SharefKey.APP_DATA).write(keyStorage, value);
      return value;
    }
  }
}
