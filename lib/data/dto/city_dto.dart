import 'package:json_annotation/json_annotation.dart';

part 'city_dto.g.dart';

@JsonSerializable()
class CityDto {
  CityDto(this.name);

  factory CityDto.fromJson(Map<String, dynamic> json) => _$CityDtoFromJson(json);

  final String name;

  Map<String, dynamic> toJson() => _$CityDtoToJson(this);
}
