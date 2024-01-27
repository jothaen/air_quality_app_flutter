// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sensor_value_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SensorValueDto _$SensorValueDtoFromJson(Map<String, dynamic> json) =>
    SensorValueDto(
      (json['v'] as num).toDouble(),
    );

Map<String, dynamic> _$SensorValueDtoToJson(SensorValueDto instance) =>
    <String, dynamic>{
      'v': instance.value,
    };
