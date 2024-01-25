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
  AirQualityData(this.aqi, this.city, this.time);

  factory AirQualityData.fromJson(Map<String, dynamic> json) => _$AirQualityDataFromJson(json);

  final int aqi;
  final City city;
  final ResponseTime time;

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
