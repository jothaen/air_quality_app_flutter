import 'package:air_quality_app/domain/air_quality_repository.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/state/air_quality_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AirQualityCubit extends Cubit<AirQualityState> {
  AirQualityCubit(this._repository) : super(const AirQualityState.idle());

  final AirQualityRepository _repository;

  Future<void> onSearch(String query) async {
    if (query.isEmpty) {
      emit(const AirQualityState.idle());
      return;
    }

    emit(const AirQualityState.loading());
    try {
      final airQuality = await _repository.getAirQuality(query);

      emit(AirQualityState.success(airQuality));
    } catch (e) {
      emit(AirQualityState.error(Exception('Something went wrong')));
    }
  }
}
