import 'package:air_quality_app/data/model/air_quality_data.dart';
import 'package:json_annotation/json_annotation.dart';

part 'air_quality_response.g.dart';

@JsonSerializable()
class AirQualityResponse {
  AirQualityResponse(this.data);

  factory AirQualityResponse.fromJson(Map<String, dynamic> json) => _$AirQualityResponseFromJson(json);

  final AirQualityData data;

  Map<String, dynamic> toJson() => _$AirQualityResponseToJson(this);
}
