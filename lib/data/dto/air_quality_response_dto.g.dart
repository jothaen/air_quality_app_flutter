// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'air_quality_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AirQualityResponseDto _$AirQualityResponseDtoFromJson(
        Map<String, dynamic> json) =>
    AirQualityResponseDto(
      AirQualityDataDto.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$AirQualityResponseDtoToJson(
        AirQualityResponseDto instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
