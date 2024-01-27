import 'package:json_annotation/json_annotation.dart';

part 'sensor_value_dto.g.dart';

@JsonSerializable()
class SensorValueDto {
  SensorValueDto(this.value);
  factory SensorValueDto.fromJson(Map<String, dynamic> json) => _$SensorValueDtoFromJson(json);

  @JsonKey(name: 'v')
  final double value;

  Map<String, dynamic> toJson() => _$SensorValueDtoToJson(this);
}
