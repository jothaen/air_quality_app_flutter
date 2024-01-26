import 'package:air_quality_app/common/extensions/cubit_extensions.dart';
import 'package:air_quality_app/domain/air_quality_repository.dart';
import 'package:air_quality_app/domain/favorites_repository.dart';
import 'package:air_quality_app/presentation/favorites/cubit/state/favorites_state.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesCubit extends Cubit<FavoritesState> {
  FavoritesCubit(
    this._favoritesRepository,
    this._airQualityRepository,
  ) : super(const FavoritesState.loading());

  final FavoritesRepository _favoritesRepository;
  final AirQualityRepository _airQualityRepository;

  Future<void> onInit() async {
    safeEmit(const FavoritesState.loading());
    try {
      final favoritesIds = await _favoritesRepository.getAllFavoritesIds();
      final favorites = await Future.wait(favoritesIds.map((id) => _airQualityRepository.getAirQuality('@$id')));
      if (favorites.isNotEmpty) {
        safeEmit(FavoritesState.success(favorites));
      } else {
        safeEmit(const FavoritesState.empty());
      }
    } catch (e) {
      debugPrint(e.toString());
      safeEmit(FavoritesState.error(Exception('Something went wrong')));
    }
  }

  Future<void> onRemoveFromFavorites(int cityId) async {
    safeEmit(const FavoritesState.loading());
    try {
      await _favoritesRepository.removeFromFavorites(cityId);
      await onInit();
    } catch (e) {
      debugPrint(e.toString());
      safeEmit(FavoritesState.error(Exception('Something went wrong')));
    }
  }
}
