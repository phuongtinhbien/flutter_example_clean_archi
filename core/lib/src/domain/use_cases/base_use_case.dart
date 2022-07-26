import 'package:core/src/domain/entities/use_case_param.dart';

abstract class BaseUseCase<P extends UserCaseParam, R> {
  Future<R> call([P? params]);
}

abstract class CompletableUseCase<P extends UserCaseParam>
    extends BaseUseCase<P, void> {}

abstract class NoParamUseCase<R>
    extends BaseUseCase<UserCaseParam, R> {}
