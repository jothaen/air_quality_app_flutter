import 'package:air_quality_app/data/dto/search_result_dto.dart';
import 'package:json_annotation/json_annotation.dart';

part 'search_response_dto.g.dart';

@JsonSerializable()
class SearchResponseDto {
  SearchResponseDto(this.data);

  factory SearchResponseDto.fromJson(Map<String, dynamic> json) => _$SearchResponseDtoFromJson(json);

  final List<SearchResultDto> data;

  Map<String, dynamic> toJson() => _$SearchResponseDtoToJson(this);
}
