import 'package:core/src/data/constants/sharef_key.dart';
import 'package:get_storage/get_storage.dart';
import 'package:package_info_plus/package_info_plus.dart';

class PackageService {
  final PackageInfo packageInfo;

  PackageService(this.packageInfo);

  static Future<PackageService> init() async {
    final packageInfo = await PackageInfo.fromPlatform();
    final packageService = PackageService(packageInfo);
    GetStorage(SharefKey.APP_DATA)
        .write('package_version', packageService.version);
    return packageService;
  }

  String get version {
    final regex = RegExp(r'[0-9].[0-9].[1-9]');
    final v = packageInfo.version;
    if (regex.allMatches(v).isNotEmpty) {
      return v;
    } else {
      return RegExp(r'[0-9].[0-9]').stringMatch(v) ?? '';
    }
  }
}
