import 'package:flutter/material.dart';

class EmptyResultsCard extends StatelessWidget {
  const EmptyResultsCard(this.text, {super.key});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Card(
        color: Colors.white.withOpacity(0.75),
        surfaceTintColor: Colors.white,
        elevation: 16,
        child: SizedBox(
          height: 98,
          width: double.infinity,
          child: Center(child: Text(text)),
        ),
      ),
    );
  }
}
