import 'package:core/core.dart';
import 'package:core/src/device/package_service.dart';
// import 'package:firebase_analytics/firebase_analytics.dart';
import 'package:injectable/injectable.dart';

@module
abstract class CoreModule {
  @preResolve
  Future<DeviceInfoService> get deviceInfo => DeviceInfoService.init();

  @preResolve
  Future<PackageService> get packageInfo => PackageService.init();

  // FirebaseAnalytics get analytics => FirebaseAnalytics.instance;
}
