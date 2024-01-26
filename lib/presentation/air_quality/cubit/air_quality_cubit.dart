import 'package:air_quality_app/domain/air_quality_repository.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/state/air_quality_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AirQualityCubit extends Cubit<AirQualityState> {
  AirQualityCubit(this._repository) : super(const AirQualityState.loading());

  final AirQualityRepository _repository;

  Future<void> onInit(int cityId) async {
    emit(const AirQualityState.loading());
    try {
      final airQuality = await _repository.getAirQuality('@$cityId');
      emit(AirQualityState.success(airQuality));
    } catch (e) {
      emit(AirQualityState.error(Exception('Something went wrong')));
    }
  }
}
