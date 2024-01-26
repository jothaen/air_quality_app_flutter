import 'package:air_quality_app/domain/model/air_quality.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'favorites_state.freezed.dart';

@freezed
abstract class FavoritesState with _$FavoritesState {
  const factory FavoritesState.loading() = _FavoritesStateLoading;
  const factory FavoritesState.success(List<AirQuality> favorites) = _FavoritesStateResults;
  const factory FavoritesState.empty() = _FavoritesStateEmpty;
  const factory FavoritesState.error(Exception error) = _FavoritesStateError;
}
