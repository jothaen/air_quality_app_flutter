part of 'air_quality_page.dart';

class _ErrorWidget extends StatelessWidget {
  const _ErrorWidget({required this.error});

  final Exception error;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        marginVertical16,
        Card(
          color: Colors.red,
          shadowColor: Colors.redAccent,
          elevation: 16,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                const Icon(Icons.error, size: 48, color: Colors.white),
                Text(
                  context.i10n.somethingWentWrong,
                  style: Theme.of(context)
                      .textTheme
                      .titleLarge
                      ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
                ),
                marginVertical24,
                Text(
                  context.i10n.genericErrorDescription,
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Colors.white),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
