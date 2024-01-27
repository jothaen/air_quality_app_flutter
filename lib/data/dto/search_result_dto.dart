import 'package:air_quality_app/data/dto/city_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result_dto.g.dart';

@JsonSerializable()
class SearchResultDto {
  const SearchResultDto(this.cityId, this.aqi, this.city);

  factory SearchResultDto.fromJson(Map<String, dynamic> json) => _$SearchResultDtoFromJson(json);
  @JsonKey(name: 'uid')
  final int cityId;
  final String aqi;
  @JsonKey(name: 'station')
  final CityDto city;

  Map<String, dynamic> toJson() => _$SearchResultDtoToJson(this);
}
