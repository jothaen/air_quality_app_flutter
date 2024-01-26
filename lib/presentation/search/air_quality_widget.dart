part of 'search_page.dart';

class _AirQualityWidget extends StatelessWidget {
  const _AirQualityWidget({required this.quality});
  final AirQuality quality;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        marginVertical16,
        Card(
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
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class _PollutantsWidget extends StatelessWidget {
  const _PollutantsWidget({required this.pollutants});

  final List<PollutionData> pollutants;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 96),
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
        marginHorizontal2,
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
