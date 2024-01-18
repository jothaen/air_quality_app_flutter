import 'package:air_quality_app/domain/model/air_quality.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'air_quality_state.freezed.dart';

@freezed
abstract class AirQualityState with _$AirQualityState {
  const factory AirQualityState.loading() = _AirQualityStateLoading;
  const factory AirQualityState.success(AirQuality quality) = _AirQualityStateSuccess;
  const factory AirQualityState.error(Exception error) = _AirQualityStateError;
}
