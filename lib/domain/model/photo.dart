import 'package:json_annotation/json_annotation.dart';
import 'package:photo_library/domain/model/user.dart';

part 'photo.g.dart';

@JsonSerializable(nullable: true)
class Photo {
  
  final String id;
  final String alt_description;
  final PhotoUrl urls;
  final int likes;
  User user;

  Photo({this.alt_description, this.id, this.urls, this.likes, this.user});

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);
}

@JsonSerializable(nullable: true)
class PhotoUrl {

  final String raw;
  final String full;
  final String regular;
  final String small;
  final String thumb;

  PhotoUrl({this.full,this.raw,this.regular, this.small, this.thumb});

  factory PhotoUrl.fromJson(Map<String, dynamic> json) => _$PhotoUrlFromJson(json);
}