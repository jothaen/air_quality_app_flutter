import 'package:air_quality_app/domain/model/air_quality.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'station_details_state.freezed.dart';

@freezed
abstract class StationDetailsState with _$StationDetailsState {
  const factory StationDetailsState.loading() = _StationDetailsStateStateLoading;
  const factory StationDetailsState.success({
    required AirQuality quality,
    required bool isFavorite,
  }) = _StationDetailsStateStateSuccess;
  const factory StationDetailsState.error(Exception error) = _StationDetailsStateStateError;
  const factory StationDetailsState.favoriteStateChanged({
    required bool isFavorite,
  }) = _StationDetailsStateFavoriteStateChanged;
}
