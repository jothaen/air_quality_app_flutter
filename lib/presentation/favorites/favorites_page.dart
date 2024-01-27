import 'package:air_quality_app/common/extensions/context_extensions.dart';
import 'package:air_quality_app/config/locator.dart';
import 'package:air_quality_app/domain/model/air_quality.dart';
import 'package:air_quality_app/presentation/common/widgets/air_quality_card.dart';
import 'package:air_quality_app/presentation/common/widgets/empty_results_card.dart';
import 'package:air_quality_app/presentation/common/widgets/error_card.dart';
import 'package:air_quality_app/presentation/common/widgets/loading_list.dart';
import 'package:air_quality_app/presentation/favorites/cubit/favorites_cubit.dart';
import 'package:air_quality_app/presentation/favorites/cubit/state/favorites_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator.get<FavoritesCubit>()..onInit(),
      child: Builder(
        builder: (context) {
          return BlocBuilder<FavoritesCubit, FavoritesState>(
            builder: (context, state) {
              return state.map(
                loading: (_) => const LoadingList(listItemHeight: 250),
                success: (success) => _FavoritesList(success.results),
                empty: (_) => EmptyResultsCard(context.i10n.noFavorites),
                error: (error) => const ErrorCard(),
              );
            },
          );
        },
      ),
    );
  }
}

class _FavoritesList extends StatelessWidget {
  const _FavoritesList(this._favorites);
  final List<AirQuality> _favorites;

  void _onRemoveFromFavorites(BuildContext context, int cityId) {
    context.read<FavoritesCubit>().onRemoveFromFavorites(cityId);
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: _favorites.length,
      itemBuilder: (context, index) {
        final item = _favorites[index];
        return AirQualityCard(
          quality: item,
          isFavorite: true,
          showFavoritesButton: true,
          onFavoriteTap: (cityId) => _onRemoveFromFavorites(context, cityId),
        );
      },
    );
  }
}
