import 'package:json_annotation/json_annotation.dart';

part 'air_quality_response.g.dart';

@JsonSerializable()
class AirQualityResponse {
  final AirQualityData data;

  AirQualityResponse(this.data);

  factory AirQualityResponse.fromJson(Map<String, dynamic> json) => _$AirQualityResponseFromJson(json);
  Map<String, dynamic> toJson() => _$AirQualityResponseToJson(this);
}

@JsonSerializable()
class AirQualityData {
  final int aqi;
  final City city;
  final ResponseTime time;

  AirQualityData(this.aqi, this.city, this.time);

  factory AirQualityData.fromJson(Map<String, dynamic> json) => _$AirQualityDataFromJson(json);
  Map<String, dynamic> toJson() => _$AirQualityDataToJson(this);
}

@JsonSerializable()
class City {
  final String name;

  City(this.name);

  factory City.fromJson(Map<String, dynamic> json) => _$CityFromJson(json);
  Map<String, dynamic> toJson() => _$CityToJson(this);
}

@JsonSerializable()
class ResponseTime {
  final String s;
  ResponseTime(this.s);

  factory ResponseTime.fromJson(Map<String, dynamic> json) => _$ResponseTimeFromJson(json);
  Map<String, dynamic> toJson() => _$ResponseTimeToJson(this);
}
