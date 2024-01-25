part of 'air_quality_page.dart';

class _AirQualityWidget extends StatelessWidget {
  const _AirQualityWidget({required this.quality});
  final AirQuality quality;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const SizedBox(height: 16),
        Card(
          color: Colors.white,
          elevation: 16,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                Text(
                  quality.locationName,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Text(
                  quality.dateTime,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                const SizedBox(height: 16),
                Text(
                  TextMapper.mapAirQuality(quality.airQualityNamed),
                  style: Theme.of(context).textTheme.displaySmall,
                ),
                const SizedBox(height: 2),
                Text('Air quality index: ${quality.airQualityIndex}'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
