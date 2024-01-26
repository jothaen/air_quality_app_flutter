import 'package:air_quality_app/data/model/search_result.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_response.g.dart';

@JsonSerializable()
class SearchResponse {
  SearchResponse(this.data);

  factory SearchResponse.fromJson(Map<String, dynamic> json) => _$SearchResponseFromJson(json);

  final List<SearchResult> data;

  Map<String, dynamic> toJson() => _$SearchResponseToJson(this);
}
