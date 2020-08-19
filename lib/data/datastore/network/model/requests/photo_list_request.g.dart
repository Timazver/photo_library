// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'photo_list_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PhotoListRequest _$PhotoListRequestFromJson(Map<String, dynamic> json) {
  return PhotoListRequest(
    query: json['query'] as String,
  )
    ..endpoint = json['endpoint'] as String
    ..headers = (json['headers'] as Map<String, dynamic>)?.map(
      (k, e) => MapEntry(k, e as String),
    )
    ..method = _$enumDecodeNullable(_$HttpMethodEnumMap, json['method']);
}

Map<String, dynamic> _$PhotoListRequestToJson(PhotoListRequest instance) =>
    <String, dynamic>{
      'query': instance.query,
      'endpoint': instance.endpoint,
      'headers': instance.headers,
      'method': _$HttpMethodEnumMap[instance.method],
    };

T _$enumDecode<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    throw ArgumentError('A value must be provided. Supported values: '
        '${enumValues.values.join(', ')}');
  }
  return enumValues.entries
      .singleWhere((e) => e.value == source,
          orElse: () => throw ArgumentError(
              '`$source` is not one of the supported values: '
              '${enumValues.values.join(', ')}'))
      .key;
}

T _$enumDecodeNullable<T>(Map<T, dynamic> enumValues, dynamic source) {
  if (source == null) {
    return null;
  }
  return _$enumDecode<T>(enumValues, source);
}

const _$HttpMethodEnumMap = <HttpMethod, dynamic>{
  HttpMethod.GET: 'GET',
  HttpMethod.POST: 'POST',
  HttpMethod.PUT: 'PUT',
  HttpMethod.DELETE: 'DELETE'
};
