// ignore_for_file: prefer-correct-identifier-length
import 'package:json_annotation/json_annotation.dart';

part 'air_quality_response.g.dart';

@JsonSerializable()
class AirQualityResponse {
  AirQualityResponse(this.data);

  factory AirQualityResponse.fromJson(Map<String, dynamic> json) => _$AirQualityResponseFromJson(json);

  final AirQualityData data;

  Map<String, dynamic> toJson() => _$AirQualityResponseToJson(this);
}

@JsonSerializable()
class AirQualityData {
  AirQualityData(this.aqi, this.city, this.time, this.sensorsData);

  factory AirQualityData.fromJson(Map<String, dynamic> json) => _$AirQualityDataFromJson(json);

  final int aqi;
  final City city;
  final ResponseTime time;
  @JsonKey(name: 'iaqi')
  final SensorsData sensorsData;

  Map<String, dynamic> toJson() => _$AirQualityDataToJson(this);
}

@JsonSerializable()
class City {
  City(this.name);

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class ResponseTime {
  ResponseTime(this.timeString);

  factory ResponseTime.fromJson(Map<String, dynamic> json) => _$ResponseTimeFromJson(json);
  @JsonKey(name: 's')
  final String timeString;
  Map<String, dynamic> toJson() => _$ResponseTimeToJson(this);
}

@JsonSerializable()
class SensorsData {
  SensorsData(this.co, this.dew, this.h, this.no2, this.o3, this.p, this.pm10, this.pm25, this.so2);

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

@JsonSerializable()
class SensorValue {
  SensorValue(this.value);
  factory SensorValue.fromJson(Map<String, dynamic> json) => _$SensorValueFromJson(json);

  @JsonKey(name: 'v')
  final double value;

  Map<String, dynamic> toJson() => _$SensorValueToJson(this);
}
