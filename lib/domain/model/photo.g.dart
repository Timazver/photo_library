// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Photo _$PhotoFromJson(Map<String, dynamic> json) {
  return Photo(
    alt_description: json['alt_description'] as String,
    id: json['id'] as String,
    urls: json['urls'] == null
        ? null
        : PhotoUrl.fromJson(json['urls'] as Map<String, dynamic>),
    likes: json['likes'] as int,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
      'id': instance.id,
      'alt_description': instance.alt_description,
      'urls': instance.urls,
      'likes': instance.likes,
      'user': instance.user,
    };

PhotoUrl _$PhotoUrlFromJson(Map<String, dynamic> json) {
  return PhotoUrl(
    full: json['full'] as String,
    raw: json['raw'] as String,
    regular: json['regular'] as String,
    small: json['small'] as String,
    thumb: json['thumb'] as String,
  );
}

Map<String, dynamic> _$PhotoUrlToJson(PhotoUrl instance) => <String, dynamic>{
      'raw': instance.raw,
      'full': instance.full,
      'regular': instance.regular,
      'small': instance.small,
      'thumb': instance.thumb,
    };
