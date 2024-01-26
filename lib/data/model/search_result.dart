import 'package:air_quality_app/data/model/city.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_result.g.dart';

@JsonSerializable()
class SearchResult {
  const SearchResult(this.cityId, this.aqi, this.city);

  factory SearchResult.fromJson(Map<String, dynamic> json) => _$SearchResultFromJson(json);
  @JsonKey(name: 'uid')
  final int cityId;
  final String aqi;
  @JsonKey(name: 'station')
  final City city;

  Map<String, dynamic> toJson() => _$SearchResultToJson(this);
}
