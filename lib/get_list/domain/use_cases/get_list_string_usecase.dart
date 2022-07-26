import 'package:core/core.dart';
import 'package:example/get_list/domain/repositories/get_list.dart';
import 'package:injectable/injectable.dart';

@LazySingleton()
class GetListStringUseCase
    extends BaseUseCase<GetListStringParam, GetListStringResponse> {

  final GetListRepository repository;

  GetListStringUseCase(this.repository);

  @override
  Future<GetListStringResponse> call([GetListStringParam? params]) async {
    if (params != null) {
      final data = await repository.getListString(params.requestCount);
      return GetListStringResponse(data);
    }
    return GetListStringResponse([]);
  }
}

class GetListStringParam extends UserCaseParam {
  final int requestCount;

  GetListStringParam(this.requestCount);
}

class GetListStringResponse {
  final List<String> data;

  GetListStringResponse(this.data);
}
