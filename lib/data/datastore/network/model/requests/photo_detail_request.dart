
import 'package:photo_library/data/datastore/network/config/backend_config.dart';
import 'package:photo_library/data/datastore/network/http_method.dart';
import 'package:photo_library/data/datastore/network/protocols/backend_request.dart';

class PhotoDetailRequest implements BackendRequest {

  final String id;

  PhotoDetailRequest({this.id});

  @override
  String get endpoint => "/photos/$id";

  @override
  Map<String, String> headers = BackendConfig.authHeaders;

  @override
  HttpMethod method = HttpMethod.GET;

  @override
  Map<String, String> get queryParameters => {};

  @override
  Map<String, dynamic> toJson() => {};

}