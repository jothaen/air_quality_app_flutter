part of 'search_page.dart';

class _WelcomeWidget extends StatelessWidget {
  const _WelcomeWidget();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        marginVertical48,
        Text(context.i10n.welcomeToTheAirQualityApp),
        marginVertical12,
        Text(
          context.i10n.useTheSearchBarToFindPlace,
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
