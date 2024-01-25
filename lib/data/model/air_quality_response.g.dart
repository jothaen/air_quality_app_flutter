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
      SensorsData.fromJson(json['iaqi'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirQualityDataToJson(AirQualityData instance) =>
    <String, dynamic>{
      'aqi': instance.aqi,
      'city': instance.city,
      'time': instance.time,
      'iaqi': instance.sensorsData,
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

SensorValue _$SensorValueFromJson(Map<String, dynamic> json) => SensorValue(
      (json['v'] as num).toDouble(),
    );

Map<String, dynamic> _$SensorValueToJson(SensorValue instance) =>
    <String, dynamic>{
      'v': instance.value,
    };
