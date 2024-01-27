// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensors_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SensorsDataDto _$SensorsDataDtoFromJson(Map<String, dynamic> json) =>
    SensorsDataDto(
      json['co'] == null
          ? null
          : SensorValueDto.fromJson(json['co'] as Map<String, dynamic>),
      json['dew'] == null
          ? null
          : SensorValueDto.fromJson(json['dew'] as Map<String, dynamic>),
      json['h'] == null
          ? null
          : SensorValueDto.fromJson(json['h'] as Map<String, dynamic>),
      json['no2'] == null
          ? null
          : SensorValueDto.fromJson(json['no2'] as Map<String, dynamic>),
      json['o3'] == null
          ? null
          : SensorValueDto.fromJson(json['o3'] as Map<String, dynamic>),
      json['p'] == null
          ? null
          : SensorValueDto.fromJson(json['p'] as Map<String, dynamic>),
      json['pm10'] == null
          ? null
          : SensorValueDto.fromJson(json['pm10'] as Map<String, dynamic>),
      json['pm25'] == null
          ? null
          : SensorValueDto.fromJson(json['pm25'] as Map<String, dynamic>),
      json['so2'] == null
          ? null
          : SensorValueDto.fromJson(json['so2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SensorsDataDtoToJson(SensorsDataDto instance) =>
    <String, dynamic>{
      'co': instance.co,
      'dew': instance.dew,
      'h': instance.h,
      'no2': instance.no2,
      'o3': instance.o3,
      'p': instance.p,
      'pm10': instance.pm10,
      'pm25': instance.pm25,
      'so2': instance.so2,
    };
