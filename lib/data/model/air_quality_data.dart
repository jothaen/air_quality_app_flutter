import 'package:air_quality_app/data/model/city.dart';
import 'package:air_quality_app/data/model/response_time.dart';
import 'package:air_quality_app/data/model/sensors_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'air_quality_data.g.dart';

@JsonSerializable()
class AirQualityData {
  AirQualityData(this.cityId, this.aqi, this.city, this.time, this.sensorsData);

  factory AirQualityData.fromJson(Map<String, dynamic> json) => _$AirQualityDataFromJson(json);

  @JsonKey(name: 'idx')
  final int cityId;
  final int aqi;
  final City city;
  final ResponseTime time;
  @JsonKey(name: 'iaqi')
  final SensorsData sensorsData;

  Map<String, dynamic> toJson() => _$AirQualityDataToJson(this);
}
