part of 'air_quality_page.dart';

class _WelcomeWidget extends StatelessWidget {
  const _WelcomeWidget();

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SizedBox(height: 48),
        Text('Welcome to the Air Quality App!'),
        SizedBox(height: 12),
        Text(
          'Use the search bar above to find the information about air quality in your place!',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
