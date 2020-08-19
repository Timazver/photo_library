import 'package:json_annotation/json_annotation.dart';

part 'user.g.dart';

@JsonSerializable(nullable: true)
class User {
  
  final String id;
  final String username;
  final String name;
  final UserImage profile_image;

  User({this.id, this.name, this.username, this.profile_image});

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}

@JsonSerializable(nullable: true)
class UserImage {
  
  final String small;

  UserImage({this.small});

  factory UserImage.fromJson(Map<String, dynamic> json) => _$UserImageFromJson(json);
}