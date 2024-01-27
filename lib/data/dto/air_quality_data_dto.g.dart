// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirQualityDataDto _$AirQualityDataDtoFromJson(Map<String, dynamic> json) =>
    AirQualityDataDto(
      json['idx'] as int,
      json['aqi'] as int,
      CityDto.fromJson(json['city'] as Map<String, dynamic>),
      ResponseTimeDto.fromJson(json['time'] as Map<String, dynamic>),
      SensorsDataDto.fromJson(json['iaqi'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirQualityDataDtoToJson(AirQualityDataDto instance) =>
    <String, dynamic>{
      'idx': instance.cityId,
      'aqi': instance.aqi,
      'city': instance.city,
      'time': instance.time,
      'iaqi': instance.sensorsData,
    };
