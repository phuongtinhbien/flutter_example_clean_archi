// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'core.dart' as _i5;
import 'src/build_config/build_mode.dart' as _i3;
import 'src/core_module.dart' as _i7;
import 'src/device/package_service.dart' as _i6;
import 'src/network/app_token_storage.dart' as _i4;

const String _demo = 'demo';
const String _stage = 'stage';
const String _live = 'live';
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
Future<_i1.GetIt> $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) async {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  final coreModule = _$CoreModule();
  gh.factory<_i3.AppBuildMode>(() => _i3.DemoBuildMode(), registerFor: {_demo});
  gh.factory<_i3.AppBuildMode>(() => _i3.StageBuildMode(),
      registerFor: {_stage});
  gh.factory<_i3.AppBuildMode>(() => _i3.LiveBuildMode(), registerFor: {_live});
  gh.factory<_i4.AppTokenStorage>(() => _i4.AppTokenStorage());
  await gh.factoryAsync<_i5.DeviceInfoService>(() => coreModule.deviceInfo,
      preResolve: true);
  await gh.factoryAsync<_i6.PackageService>(() => coreModule.packageInfo,
      preResolve: true);
  return get;
}

class _$CoreModule extends _i7.CoreModule {}
