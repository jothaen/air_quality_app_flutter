part of 'air_quality_page.dart';

class _WelcomeWidget extends StatelessWidget {
  const _WelcomeWidget();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        marginVertical48,
        Text('Welcome to the Air Quality App!'),
        marginVertical12,
        Text(
          'Use the search bar above to find the information about air quality in your place!',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
