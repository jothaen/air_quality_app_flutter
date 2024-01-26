import 'package:json_annotation/json_annotation.dart';

part 'sensor_value.g.dart';

@JsonSerializable()
class SensorValue {
  SensorValue(this.value);
  factory SensorValue.fromJson(Map<String, dynamic> json) => _$SensorValueFromJson(json);

  @JsonKey(name: 'v')
  final double value;

  Map<String, dynamic> toJson() => _$SensorValueToJson(this);
}
