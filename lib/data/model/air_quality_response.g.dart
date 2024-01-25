// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirQualityResponse _$AirQualityResponseFromJson(Map<String, dynamic> json) =>
    AirQualityResponse(
      AirQualityData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirQualityResponseToJson(AirQualityResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };

AirQualityData _$AirQualityDataFromJson(Map<String, dynamic> json) =>
    AirQualityData(
      json['aqi'] as int,
      City.fromJson(json['city'] as Map<String, dynamic>),
      ResponseTime.fromJson(json['time'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirQualityDataToJson(AirQualityData instance) =>
    <String, dynamic>{
      'aqi': instance.aqi,
      'city': instance.city,
      'time': instance.time,
    };

City _$CityFromJson(Map<String, dynamic> json) => City(
      json['name'] as String,
    );

Map<String, dynamic> _$CityToJson(City instance) => <String, dynamic>{
      'name': instance.name,
    };

ResponseTime _$ResponseTimeFromJson(Map<String, dynamic> json) => ResponseTime(
      json['s'] as String,
    );

Map<String, dynamic> _$ResponseTimeToJson(ResponseTime instance) =>
    <String, dynamic>{
      's': instance.timeString,
    };
