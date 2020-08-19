// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

User _$UserFromJson(Map<String, dynamic> json) {
  return User(
    id: json['id'] as String,
    name: json['name'] as String,
    username: json['username'] as String,
    profile_image: json['profile_image'] == null
        ? null
        : UserImage.fromJson(json['profile_image'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$UserToJson(User instance) => <String, dynamic>{
      'id': instance.id,
      'username': instance.username,
      'name': instance.name,
      'profile_image': instance.profile_image,
    };

UserImage _$UserImageFromJson(Map<String, dynamic> json) {
  return UserImage(
    small: json['small'] as String,
  );
}

Map<String, dynamic> _$UserImageToJson(UserImage instance) => <String, dynamic>{
      'small': instance.small,
    };
