
import 'package:photo_library/data/datastore/network/config/backend_config.dart';
import 'package:photo_library/data/datastore/network/http_method.dart';
import 'package:photo_library/data/datastore/network/protocols/backend_request.dart';

class PhotoLikeRequest implements BackendRequest {

  final String id;

  PhotoLikeRequest({this.id});

  @override
  String get endpoint => "/photos/$id/like";

  @override
  Map<String, String> headers = BackendConfig.authHeaders;

  @override
  HttpMethod method = HttpMethod.POST;

  @override
  // TODO: implement queryParameters
  Map<String, String> get queryParameters => {};

  @override
  Map<String, dynamic> toJson() => {};

}