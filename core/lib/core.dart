@injectable
library core;

import 'package:core/core.config.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

export './src/data/data.dart';
export './src/device/device.dart';
export './src/domain/domain.dart';
export './src/network/network.dart';
export './src/presentation/presentation.dart';
export './src/utils/utils.dart';
export './src/device/device.dart';


final getIt = GetIt.instance;

@InjectableInit(
  initializerName: r'$initGetIt', // default
  preferRelativeImports: true, // default
  asExtension: false,
)
Future<GetIt> configureCoreDependencies(
    {String? environment, EnvironmentFilter? environmentFilter}) async {
  return $initGetIt(getIt,
      environment: environment, environmentFilter: environmentFilter);
}
