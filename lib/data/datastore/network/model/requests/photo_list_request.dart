
import 'package:json_annotation/json_annotation.dart';
import 'package:photo_library/data/datastore/network/config/backend_config.dart';
import 'package:photo_library/data/datastore/network/http_method.dart';
import 'package:photo_library/data/datastore/network/protocols/backend_request.dart';
part 'photo_list_request.g.dart';

@JsonSerializable(nullable: true)
class PhotoListRequest implements BackendRequest {

  final String query;

  PhotoListRequest({this.query});

  @override
  String endpoint = "/search/photos";

  @override
  Map<String, String> headers = BackendConfig.authHeaders;

  @override
  HttpMethod method = HttpMethod.GET;

  @override
  Map<String, String> get queryParameters => {
    "query" : query
  };

  @override
  Map<String, dynamic> toJson() => {
    "query": query
  };

}