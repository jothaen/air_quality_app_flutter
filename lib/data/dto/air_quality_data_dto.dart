import 'package:air_quality_app/data/dto/city_dto.dart';
import 'package:air_quality_app/data/dto/response_time_dto.dart';
import 'package:air_quality_app/data/dto/sensors_data_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'air_quality_data_dto.g.dart';

@JsonSerializable()
class AirQualityDataDto {
  AirQualityDataDto(this.cityId, this.aqi, this.city, this.time, this.sensorsData);

  factory AirQualityDataDto.fromJson(Map<String, dynamic> json) => _$AirQualityDataDtoFromJson(json);

  @JsonKey(name: 'idx')
  final int cityId;
  final int aqi;
  final CityDto city;
  final ResponseTimeDto time;
  @JsonKey(name: 'iaqi')
  final SensorsDataDto sensorsData;

  Map<String, dynamic> toJson() => _$AirQualityDataDtoToJson(this);
}
