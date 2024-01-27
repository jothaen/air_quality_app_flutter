import 'package:air_quality_app/data/dto/air_quality_data_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'air_quality_response_dto.g.dart';

@JsonSerializable()
class AirQualityResponseDto {
  AirQualityResponseDto(this.data);

  factory AirQualityResponseDto.fromJson(Map<String, dynamic> json) => _$AirQualityResponseDtoFromJson(json);

  final AirQualityDataDto data;

  Map<String, dynamic> toJson() => _$AirQualityResponseDtoToJson(this);
}
