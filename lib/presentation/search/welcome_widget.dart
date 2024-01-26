part of 'search_page.dart';

class _WelcomeWidget extends StatelessWidget {
  const _WelcomeWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          marginVertical24,
          Text(context.i10n.welcomeToTheAirQualityApp),
          marginVertical12,
          Text(
            context.i10n.useTheSearchBarToFindPlace,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
