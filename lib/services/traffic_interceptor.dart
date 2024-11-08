import 'package:dio/dio.dart';

const accessToken =
    'pk.eyJ1IjoiY2FybG9zbWctMDQiLCJhIjoiY20zNXFsNnVtMGRmMTJrcjFlZTZmZjdscCJ9.louT4ZShFGgCNVIrU3NPXw';

class TrafficInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.queryParameters.addAll({
      'alternatives': true,
      'geometries': 'polyline6',
      'overview': 'simplified',
      'steps': false,
      'access_token': accessToken
    });

    super.onRequest(options, handler);
  }
}
