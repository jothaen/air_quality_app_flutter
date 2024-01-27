import 'package:air_quality_app/common/extensions/context_extensions.dart';
import 'package:air_quality_app/domain/model/air_quality.dart';
import 'package:air_quality_app/presentation/common/gaps.dart';
import 'package:air_quality_app/presentation/station_details/util/air_quality_values_mapper.dart';
import 'package:flutter/material.dart';

typedef OnFavoriteTap = void Function(int);

class AirQualityCard extends StatelessWidget {
  const AirQualityCard({
    required this.quality,
    this.isFavorite = false,
    this.showFavoritesButton = false,
    this.onFavoriteTap,
    super.key,
  });
  final AirQuality quality;
  final bool isFavorite;
  final bool showFavoritesButton;
  final OnFavoriteTap? onFavoriteTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Card(
            color: Colors.white.withOpacity(0.75),
            surfaceTintColor: Colors.white,
            elevation: 16,
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Text(
                    quality.locationName,
                    textAlign: TextAlign.center,
                    style: context.theme.textTheme.bodySmall,
                  ),
                  Text(
                    quality.dateTime,
                    style: context.theme.textTheme.bodySmall,
                  ),
                  marginVertical16,
                  Text(
                    AirQualityValuesMapper.getMappedName(context, quality.airQualityNamed),
                    style: context.theme.textTheme.displaySmall?.copyWith(),
                  ),
                  marginVertical2,
                  Text(context.i10n.airQualityIndex(quality.airQualityIndex)),
                  marginVertical16,
                  _PollutantsWidget(
                    pollutants: quality.pollutionData,
                  ),
                  if (showFavoritesButton) ...[
                    Align(
                      alignment: Alignment.centerLeft,
                      child: _FavoritesButton(
                        isFavorite: isFavorite,
                        onTap: () => onFavoriteTap?.call(quality.cityId),
                      ),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _FavoritesButton extends StatelessWidget {
  const _FavoritesButton({required this.isFavorite, required this.onTap});

  final bool isFavorite;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onTap,
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_outline),
      label: Text(isFavorite ? context.i10n.removeFromFavorites : context.i10n.addToFavorites),
    );
  }
}

class _PollutantsWidget extends StatelessWidget {
  const _PollutantsWidget({required this.pollutants});

  final List<PollutionData> pollutants;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(children: pollutants.map(_PollutantRow.new).toList()),
    );
  }
}

class _PollutantRow extends StatelessWidget {
  const _PollutantRow(this.pollutionData);
  final PollutionData pollutionData;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(pollutionData.name),
        const Spacer(),
        marginHorizontal48,
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              '${pollutionData.percentage}%',
              style: context.theme.textTheme.labelLarge?.copyWith(fontWeight: FontWeight.bold),
            ),
            Text(
              '${pollutionData.value} ${pollutionData.unit}',
              style: context.theme.textTheme.labelSmall,
            ),
            marginVertical2,
          ],
        ),
      ],
    );
  }
}
