import 'package:json_annotation/json_annotation.dart';

part 'response_time_dto.g.dart';

@JsonSerializable()
class ResponseTimeDto {
  ResponseTimeDto(this.timeString);

  factory ResponseTimeDto.fromJson(Map<String, dynamic> json) => _$ResponseTimeDtoFromJson(json);
  @JsonKey(name: 's')
  final String timeString;
  Map<String, dynamic> toJson() => _$ResponseTimeDtoToJson(this);
}
