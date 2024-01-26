// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirQualityData _$AirQualityDataFromJson(Map<String, dynamic> json) =>
    AirQualityData(
      json['idx'] as int,
      json['aqi'] as int,
      City.fromJson(json['city'] as Map<String, dynamic>),
      ResponseTime.fromJson(json['time'] as Map<String, dynamic>),
      SensorsData.fromJson(json['iaqi'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirQualityDataToJson(AirQualityData instance) =>
    <String, dynamic>{
      'idx': instance.cityId,
      'aqi': instance.aqi,
      'city': instance.city,
      'time': instance.time,
      'iaqi': instance.sensorsData,
    };
