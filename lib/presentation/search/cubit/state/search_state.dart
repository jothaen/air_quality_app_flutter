import 'package:air_quality_app/domain/model/city_search_result.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'search_state.freezed.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.idle() = _SearchStateIdle;
  const factory SearchState.loading() = _SearchStateLoading;
  const factory SearchState.results(List<CitySearchResult> results) = _SearchStateResults;
  const factory SearchState.noResults() = _SearchNoResults;
  const factory SearchState.error(Exception error) = _AirQualityStateError;
}
