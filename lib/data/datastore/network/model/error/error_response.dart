
import 'package:json_annotation/json_annotation.dart';
part 'error_response.g.dart';

@JsonSerializable(nullable: true)
class ErrorResponse {
  String code;
  String message;

  ErrorResponse({this.code,this.message});

  factory ErrorResponse.fromJson(Map<String, dynamic> json) => _$ErrorResponseFromJson(json);

}