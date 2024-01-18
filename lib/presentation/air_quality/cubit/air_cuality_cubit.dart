import 'package:air_quality_app/domain/air_quality_repository.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/state/air_quality_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AirQualityCubit extends Cubit<AirQualityState> {
  final AirQualityRepository _repository;

  AirQualityCubit(this._repository) : super(const AirQualityState.loading());

  Future<void> onInit() async {
    emit(const AirQualityState.loading());
    try {
      final airQuality = await _repository.getAirQuality('Krakow'); // TODO

      emit(AirQualityState.success(airQuality));
    } on Exception catch (e) {
      emit(AirQualityState.error(e));
    }
  }
}
