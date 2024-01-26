// ignore_for_file: prefer-correct-identifier-length
import 'package:air_quality_app/data/model/sensor_value.dart';
import 'package:json_annotation/json_annotation.dart';

part 'sensors_data.g.dart';

@JsonSerializable()
class SensorsData {
  SensorsData(
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

  factory SensorsData.fromJson(Map<String, dynamic> json) => _$SensorsDataFromJson(json);

  final SensorValue? co;
  final SensorValue? dew;
  final SensorValue? h;
  final SensorValue? no2;
  final SensorValue? o3;
  final SensorValue? p;
  final SensorValue? pm10;
  final SensorValue? pm25;
  final SensorValue? so2;

  Map<String, dynamic> toJson() => _$SensorsDataToJson(this);
}
