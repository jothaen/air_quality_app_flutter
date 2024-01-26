part of 'search_page.dart';

class _ResultsWidget extends StatelessWidget {
  const _ResultsWidget({required this.results, required this.onResultTap});
  final List<CitySearchResult> results;
  final void Function(int) onResultTap;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (context, index) {
        final city = results[index];
        return Padding(
          padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
          child: GestureDetector(
            onTap: () => onResultTap.call(city.id),
            child: Card(
              surfaceTintColor: Colors.white,
              elevation: 16,
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(city.name, style: context.theme.textTheme.titleMedium),
                    marginVertical8,
                    Text(
                      AirQualityValuesMapper.getMappedName(context, city.airQualityNamed),
                      style: context.theme.textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.w500),
                    ),
                    Text(
                      context.i10n.airQualityIndex(city.airQualityIndex),
                      style: context.theme.textTheme.labelMedium,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
