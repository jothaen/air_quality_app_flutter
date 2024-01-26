// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResult _$SearchResultFromJson(Map<String, dynamic> json) => SearchResult(
      json['uid'] as int,
      json['aqi'] as String,
      City.fromJson(json['station'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchResultToJson(SearchResult instance) =>
    <String, dynamic>{
      'uid': instance.cityId,
      'aqi': instance.aqi,
      'station': instance.city,
    };
