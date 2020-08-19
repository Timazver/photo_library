import 'package:photo_library/data/datastore/network/config/backend_config.dart';
import 'package:photo_library/data/datastore/network/protocols/backend_request.dart';

import '../../http_method.dart';

class PhotoUnlikeRequest implements BackendRequest {

  final String id;

  PhotoUnlikeRequest({this.id});

  @override
  String get endpoint => "/photos/$id/like";

  @override
  Map<String, String> headers = BackendConfig.authHeaders;

  @override
  HttpMethod method = HttpMethod.DELETE;

  @override
  Map<String, String> get queryParameters => {};

  @override
  Map<String, dynamic> toJson() => {};
}