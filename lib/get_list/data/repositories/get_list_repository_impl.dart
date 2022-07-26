import 'package:example/get_list/data/data_sources/remote_provider.dart';
import 'package:example/get_list/domain/repositories/get_list.dart';
import 'package:injectable/injectable.dart';

@LazySingleton(as: GetListRepository)
class GetListRepositoryImpl extends GetListRepository {
  final RemoteProvider remoteProvider;

  GetListRepositoryImpl(this.remoteProvider);

  @override
  Future<List<int>> getListInt(int requestCount) {
    // TODO: implement getListInt
    throw UnimplementedError();
  }

  @override
  Future<List<String>> getListString(int requestCount) async {
    try {
      final data = await remoteProvider.client.getStringRepositories();
    return data.map((e) => e.full_name).toList();

    } catch (e, stackTrace) {
      
    }
    return [];
  }

}