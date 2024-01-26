// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensors_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SensorsData _$SensorsDataFromJson(Map<String, dynamic> json) => SensorsData(
      json['co'] == null
          ? null
          : SensorValue.fromJson(json['co'] as Map<String, dynamic>),
      json['dew'] == null
          ? null
          : SensorValue.fromJson(json['dew'] as Map<String, dynamic>),
      json['h'] == null
          ? null
          : SensorValue.fromJson(json['h'] as Map<String, dynamic>),
      json['no2'] == null
          ? null
          : SensorValue.fromJson(json['no2'] as Map<String, dynamic>),
      json['o3'] == null
          ? null
          : SensorValue.fromJson(json['o3'] as Map<String, dynamic>),
      json['p'] == null
          ? null
          : SensorValue.fromJson(json['p'] as Map<String, dynamic>),
      json['pm10'] == null
          ? null
          : SensorValue.fromJson(json['pm10'] as Map<String, dynamic>),
      json['pm25'] == null
          ? null
          : SensorValue.fromJson(json['pm25'] as Map<String, dynamic>),
      json['so2'] == null
          ? null
          : SensorValue.fromJson(json['so2'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SensorsDataToJson(SensorsData instance) =>
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
