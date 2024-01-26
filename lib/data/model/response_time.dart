import 'package:json_annotation/json_annotation.dart';

part 'response_time.g.dart';

@JsonSerializable()
class ResponseTime {
  ResponseTime(this.timeString);

  factory ResponseTime.fromJson(Map<String, dynamic> json) => _$ResponseTimeFromJson(json);
  @JsonKey(name: 's')
  final String timeString;
  Map<String, dynamic> toJson() => _$ResponseTimeToJson(this);
}
