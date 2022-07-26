import 'package:core/src/data/constants/sharef_key.dart';
import 'package:get_storage/get_storage.dart';

class AppStorage {
  static final AppStorage _singleton = AppStorage._internal();

  factory AppStorage() {
    return _singleton;
  }

  AppStorage._internal();

  Future<void> init() async {
    await GetStorage.init(SharefKey.APP_DATA);
  }

  GetStorage get app => GetStorage(SharefKey.APP_DATA);
}
