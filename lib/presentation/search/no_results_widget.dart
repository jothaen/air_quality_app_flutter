part of 'search_page.dart';

class _NoResultsWidget extends StatelessWidget {
  const _NoResultsWidget();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        surfaceTintColor: Colors.white,
        color: Colors.white,
        elevation: 16,
        child: SizedBox(
          height: 98,
          width: double.infinity,
          child: Center(child: Text(context.i10n.noResults)),
        ),
      ),
    );
  }
}
