import 'package:dio/dio.dart';
import 'package:example/get_list/data/models/repository_model.dart';
import 'package:retrofit/retrofit.dart';

part 'remote_rest_client.g.dart';

@RestApi(autoCastResponse: true)
abstract class RemoteRestClient {
  factory RemoteRestClient(Dio dio) = _RemoteRestClient;

  @GET('repositories')
  Future<List<RepositoryModel>> getStringRepositories();
}
