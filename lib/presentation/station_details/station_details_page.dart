import 'package:air_quality_app/common/app_assets.dart';
import 'package:air_quality_app/common/extensions/context_extensions.dart';
import 'package:air_quality_app/config/locator.dart';
import 'package:air_quality_app/presentation/common/app_colors.dart';
import 'package:air_quality_app/presentation/common/widgets/air_quality_card.dart';
import 'package:air_quality_app/presentation/common/widgets/error_card.dart';
import 'package:air_quality_app/presentation/common/widgets/loading_card.dart';
import 'package:air_quality_app/presentation/station_details/cubit/state/station_details_state.dart';
import 'package:air_quality_app/presentation/station_details/cubit/station_details_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StationDetailsPage extends StatelessWidget {
  const StationDetailsPage(this.cityId, {super.key});
  final int cityId;

  void _onCubitStateChange(BuildContext context, StationDetailsState state) {
    state.mapOrNull(
      favoriteStateChanged: (favoriteState) => context.showSnackBar(
        favoriteState.isFavorite ? context.i10n.addedToFavorites : context.i10n.removedFromFavorites,
      ),
    );
  }

  void _onToggleFavorite(BuildContext context, int cityId) {
    context.read<StationDetailsCubit>().onToggleFavorite(cityId);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => locator.get<StationDetailsCubit>()..onInit(cityId),
      child: Builder(
        builder: (context) {
          return Scaffold(
            appBar: AppBar(
              title: Text(context.i10n.airQuality),
              backgroundColor: AppColors.lightBlue,
            ),
            backgroundColor: AppColors.lightBlue,
            body: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Image.asset(
                    AppAssets.imageCity,
                    height: 450,
                    fit: BoxFit.fitHeight,
                  ),
                ),
                SingleChildScrollView(
                  child: BlocConsumer<StationDetailsCubit, StationDetailsState>(
                    listener: _onCubitStateChange,
                    builder: (context, state) {
                      return Hero(
                        tag: cityId,
                        child: AnimatedSwitcher(
                          duration: const Duration(milliseconds: 250),
                          child: state.maybeMap(
                            loading: (_) => const LoadingCard(height: 250),
                            success: (success) => AirQualityCard(
                              quality: success.quality,
                              isFavorite: success.isFavorite,
                              showFavoritesButton: true,
                              onFavoriteTap: (cityId) => _onToggleFavorite(context, cityId),
                            ),
                            error: (error) => const ErrorCard(),
                            orElse: () => const SizedBox(),
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class StationDetailsPageArgs {
  StationDetailsPageArgs(this.cityId);

  final int cityId;
}
