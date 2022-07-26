import 'package:dio/dio.dart';

abstract class DynamicHeaderInterceptor extends Interceptor {
  DynamicHeaderInterceptor();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.addAll(createHeader());
    return super.onRequest(options, handler);
  }

  Map<String, dynamic> createHeader();
}
