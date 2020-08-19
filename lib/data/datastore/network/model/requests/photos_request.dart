
import 'package:photo_library/data/datastore/network/config/backend_config.dart';
import 'package:photo_library/data/datastore/network/http_method.dart';
import 'package:photo_library/data/datastore/network/protocols/backend_request.dart';

class PhotosRequest implements BackendRequest {

  @override
  String endpoint = "/photos";

  @override
  Map<String, String> headers = BackendConfig.authHeaders;

  @override
  HttpMethod method = HttpMethod.GET;

  @override
  // TODO: implement queryParameters
  Map<String, String> get queryParameters => {};

  @override
  Map<String, dynamic> toJson() => {};

}