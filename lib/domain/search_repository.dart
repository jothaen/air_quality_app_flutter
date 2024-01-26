import 'package:air_quality_app/data/api/air_quality_api.dart';
import 'package:air_quality_app/domain/mapper/search_result_mapper.dart';
import 'package:air_quality_app/domain/model/city_search_result.dart';

class SearchRepository {
  SearchRepository(this._api);

  final AirQualityApi _api;

  Future<List<CitySearchResult>> searchForCities(String query) async {
    final result = await _api.searchForCity(query, AirQualityApi.token);
    final mappedResults = result.data.map(SearchResultMapper.map).toList();
    // filtering-out all null values from the results list
    return mappedResults.whereType<CitySearchResult>().toList();
  }
}
