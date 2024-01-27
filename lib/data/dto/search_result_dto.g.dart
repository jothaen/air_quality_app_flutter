// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_result_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResultDto _$SearchResultDtoFromJson(Map<String, dynamic> json) =>
    SearchResultDto(
      json['uid'] as int,
      json['aqi'] as String,
      CityDto.fromJson(json['station'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SearchResultDtoToJson(SearchResultDto instance) =>
    <String, dynamic>{
      'uid': instance.cityId,
      'aqi': instance.aqi,
      'station': instance.city,
    };
