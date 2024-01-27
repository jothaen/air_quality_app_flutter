// ignore_for_file: prefer-correct-identifier-length
import 'package:air_quality_app/data/dto/sensor_value_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sensors_data_dto.g.dart';

@JsonSerializable()
class SensorsDataDto {
  SensorsDataDto(
    this.co,
    this.dew,
    this.h,
    this.no2,
    this.o3,
    this.p,
    this.pm10,
    this.pm25,
    this.so2,
  );

  factory SensorsDataDto.fromJson(Map<String, dynamic> json) => _$SensorsDataDtoFromJson(json);

  final SensorValueDto? co;
  final SensorValueDto? dew;
  final SensorValueDto? h;
  final SensorValueDto? no2;
  final SensorValueDto? o3;
  final SensorValueDto? p;
  final SensorValueDto? pm10;
  final SensorValueDto? pm25;
  final SensorValueDto? so2;

  Map<String, dynamic> toJson() => _$SensorsDataDtoToJson(this);
}
