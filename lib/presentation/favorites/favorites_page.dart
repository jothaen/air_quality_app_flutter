import 'package:air_quality_app/common/extensions/context_extensions.dart';
import 'package:air_quality_app/common/widgets/empty_results_card.dart';
import 'package:air_quality_app/common/widgets/error_card.dart';
import 'package:air_quality_app/common/widgets/loading_list.dart';
import 'package:air_quality_app/config/locator.dart';
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
                loading: (_) => const LoadingList(),
                success: (success) => Text(success.results.length.toString()),
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
