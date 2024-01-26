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
