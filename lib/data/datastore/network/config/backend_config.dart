import 'package:dio/dio.dart';
import 'package:photo_library/util/constants.dart';

class BackendConfig {

  static BaseOptions options = new BaseOptions(
    baseUrl: Constants.baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  
  static const Map<String, String> headers = {
    "Content-Type": "application/json"
  };
  static Map<String, String> authHeaders = {
    "Content-Type": "application/json",
    "Authorization": "Bearer ${Constants.accessToken}"
  };
}
