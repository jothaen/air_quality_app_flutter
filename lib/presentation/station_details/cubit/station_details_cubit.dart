import 'package:air_quality_app/common/extensions/cubit_extensions.dart';
import 'package:air_quality_app/domain/air_quality_repository.dart';
import 'package:air_quality_app/domain/favorites_repository.dart';
import 'package:air_quality_app/presentation/station_details/cubit/state/station_details_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StationDetailsCubit extends Cubit<StationDetailsState> {
  StationDetailsCubit(
    this._airQualityRepository,
    this._favoritesRepository,
  ) : super(const StationDetailsState.loading());

  final AirQualityRepository _airQualityRepository;
  final FavoritesRepository _favoritesRepository;

  Future<void> onInit(int cityId) async {
    safeEmit(const StationDetailsState.loading());
    try {
      final airQuality = await _airQualityRepository.getAirQuality('@$cityId');
      final isFavorite = await _isFavorite(cityId);

      safeEmit(
        StationDetailsState.success(
          quality: airQuality,
          isFavorite: isFavorite,
        ),
      );
    } catch (e) {
      safeEmit(StationDetailsState.error(Exception('Something went wrong')));
    }
  }

  Future<void> onToggleFavorite(int cityId) async {
    final previousState = state;
    final isFavorite = await _isFavorite(cityId);
    try {
      isFavorite
          ? await _favoritesRepository.removeFromFavorites(cityId)
          : await _favoritesRepository.addToFavorites(cityId);
      safeEmit(StationDetailsState.favoriteStateChanged(isFavorite: !isFavorite));

      previousState.mapOrNull(
        success: (success) => safeEmit(success.copyWith(isFavorite: !isFavorite)),
      );
    } catch (e) {
      safeEmit(StationDetailsState.error(Exception('Something went wrong')));
    }
  }

  Future<bool> _isFavorite(int cityId) async {
    final allFavorites = await _favoritesRepository.getAllFavoritesIds();
    return allFavorites.contains(cityId);
  }
}
