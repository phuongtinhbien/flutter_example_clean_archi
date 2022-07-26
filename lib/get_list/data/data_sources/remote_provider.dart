import 'package:core/core.dart';
import 'package:dio/src/dio.dart';
import 'package:dio/src/response.dart';
import 'package:injectable/injectable.dart';
import 'remote_rest_client.dart';

@LazySingleton()
class RemoteProvider extends NetworkApiProvider<RemoteRestClient> {

  RemoteProvider(super.mode, super.appTokenStorage);

  @override
  RemoteRestClient get client => RemoteRestClient(dio);

  @override
  Future<UserTokenModel> refreshToken(UserTokenModel? token, Dio dio) {
    // TODO: implement refreshToken
    throw UnimplementedError();
  }

  @override
  bool shouldRefresh(Response? response) {
    // TODO: implement shouldRefresh
    throw UnimplementedError();
  }



}