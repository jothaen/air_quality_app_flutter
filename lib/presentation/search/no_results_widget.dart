part of 'search_page.dart';

class _NoResultsWidget extends StatelessWidget {
  const _NoResultsWidget();

  @override
  Widget build(BuildContext context) {
    // TODO(piotrek): enhance
    return Text(context.i10n.noResults);
  }
}
