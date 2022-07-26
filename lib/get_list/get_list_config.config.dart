// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:core/core.dart' as _i4;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'data/data_sources/remote_provider.dart' as _i3;
import 'data/repositories/get_list_repository_impl.dart' as _i6;
import 'domain/repositories/get_list.dart' as _i5;
import 'domain/use_cases/get_list_string_usecase.dart' as _i7;
import 'presentation/bloc/get_list_page_bloc.dart'
    as _i8; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.lazySingleton<_i3.RemoteProvider>(() =>
      _i3.RemoteProvider(get<_i4.NetWorkMode>(), get<_i4.AppTokenStorage>()));
  gh.lazySingleton<_i5.GetListRepository>(
      () => _i6.GetListRepositoryImpl(get<_i3.RemoteProvider>()));
  gh.lazySingleton<_i7.GetListStringUseCase>(
      () => _i7.GetListStringUseCase(get<_i5.GetListRepository>()));
  gh.lazySingleton<_i8.GetListPageBloc>(
      () => _i8.GetListPageBloc(get<_i7.GetListStringUseCase>()));
  return get;
}
