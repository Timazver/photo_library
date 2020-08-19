import 'package:dio/dio.dart';
import 'package:photo_library/data/datastore/network/config/backend_config.dart';
import 'package:xrange/num_range.dart';

import '../http_method.dart';
class NetworkService {

  Dio _dio = new Dio(BackendConfig.options);
  NumRange _successCodes = NumRange.closed(200, 299);

  static final NetworkService networkService = NetworkService();

  Future<dynamic> request(
      String url, HttpMethod method, Map<String, String> headers,
      {Map<String, dynamic> parameters, Map<String, String> queryParameters}) async {
    _dio.options.headers = headers;
    Response response;
    try {
    switch (method) {
      case HttpMethod.GET:
        {
          response = await _dio.get(url, queryParameters: queryParameters);
        }
        break;
      case HttpMethod.POST:
        response = await _dio.post(url, data: parameters);
        break;
      case HttpMethod.PUT:
        response = await _dio.put(url, data: parameters);
        break;
      case HttpMethod.DELETE:
        response = await _dio.delete(url);
        break;
    }
    } on DioError catch (error) {
      print(error);
      // return Future.error(error.response.data);
      return error.response.data;
    }
    if (response != null) {
      if (_successCodes.contains(response.statusCode)) {
        // print(response.data);
        return response.data;
      }
    }
  }
}
