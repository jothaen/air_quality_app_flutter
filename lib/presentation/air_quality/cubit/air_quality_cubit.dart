import 'package:air_quality_app/domain/air_quality_repository.dart';
import 'package:air_quality_app/domain/favorites_repository.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/state/air_quality_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AirQualityCubit extends Cubit<AirQualityState> {
  AirQualityCubit(
    this._airQualityRepository,
    this._favoritesRepository,
  ) : super(const AirQualityState.loading());

  final AirQualityRepository _airQualityRepository;
  final FavoritesRepository _favoritesRepository;

  Future<void> onInit(int cityId) async {
    emit(const AirQualityState.loading());
    try {
      final airQuality = await _airQualityRepository.getAirQuality('@$cityId');
      final isFavorite = await _isFavorite(cityId);

      emit(
        AirQualityState.success(
          quality: airQuality,
          isFavorite: isFavorite,
        ),
      );
    } catch (e) {
      emit(AirQualityState.error(Exception('Something went wrong')));
    }
  }

  Future<void> onToggleFavorite(int cityId) async {
    final previousState = state;
    final isFavorite = await _isFavorite(cityId);
    try {
      isFavorite
          ? await _favoritesRepository.removeFromFavorites(cityId)
          : await _favoritesRepository.addToFavorites(cityId);
      emit(AirQualityState.favoriteStateChanged(isFavorite: !isFavorite));

      // TODO(piotrek): refactor this maybe
      previousState.mapOrNull(
        success: (value) {
          emit(
            AirQualityState.success(
              quality: value.quality,
              isFavorite: !isFavorite,
            ),
          );
        },
      );
    } catch (e) {
      emit(AirQualityState.error(Exception('Something went wrong')));
    }
  }

  Future<bool> _isFavorite(int cityId) async {
    final allFavorites = await _favoritesRepository.getAllFavoritesIds();
    return allFavorites.contains(cityId);
  }
}
