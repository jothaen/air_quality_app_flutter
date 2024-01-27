import 'package:air_quality_app/data/dto/search_result_dto.dart';
import 'package:air_quality_app/domain/mapper/air_quality_named_mapper.dart';
import 'package:air_quality_app/domain/model/city_search_result.dart';

class SearchResultMapper {
  SearchResultMapper._();

  /// Returns mapped results if it contains correct aqi value, otherwhise it returns null
  static CitySearchResult? map(SearchResultDto searchResult) {
    final parsedAqi = int.tryParse(searchResult.aqi);
    if (parsedAqi == null) {
      return null;
    }

    return CitySearchResult(
      searchResult.cityId,
      searchResult.city.name,
      parsedAqi,
      AirQualityNamedMapper.mapAirQualityNamed(parsedAqi),
    );
  }
}
