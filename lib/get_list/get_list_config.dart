import 'package:core/core.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'get_list_config.config.dart';

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false,
)
GetIt configureDependencies(
        {required GetIt getIt,
        String? environment,
        EnvironmentFilter? environmentFilter}) =>
    $initGetIt(getIt,
        environment: environment, environmentFilter: environmentFilter);

class GetListConfig {
  static final GetIt injector = GetIt.instance;

  static void init(BuildMode mode) {
    injector.registerSingleton<NetWorkMode>(
        DevelopmentMode(baseUrl: 'https://api.github.com/'));
    injector.registerSingleton(AppTokenStorage());
    configureDependencies(getIt: injector, environment: mode.value);
  }
}
