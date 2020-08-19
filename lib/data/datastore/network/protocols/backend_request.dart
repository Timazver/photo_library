import 'package:json_annotation/json_annotation.dart';

import '../http_method.dart';

abstract class BackendRequest {
  @JsonKey(ignore: true)
  String get endpoint;
  @JsonKey(ignore: true)
  HttpMethod method;
  @JsonKey(ignore: true)
  Map<String, String> headers;
  @JsonKey(ignore: true)
  Map<String, String> get queryParameters;
  @JsonKey(ignore: true)
  Map<String, dynamic> toJson();
}
