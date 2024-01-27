import 'package:air_quality_app/common/extensions/context_extensions.dart';
import 'package:air_quality_app/presentation/common/gaps.dart';
import 'package:flutter/material.dart';

class ErrorCard extends StatelessWidget {
  const ErrorCard({this.message, super.key});

  final String? message;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8, left: 16, right: 16),
      child: Column(
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
                  marginVertical8,
                  Text(
                    context.i10n.somethingWentWrong,
                    style:
                        context.theme.textTheme.titleMedium?.copyWith(color: Colors.white, fontWeight: FontWeight.w500),
                  ),
                  if (message != null) ...[
                    marginVertical12,
                    Text(
                      message!,
                      textAlign: TextAlign.center,
                      style: context.theme.textTheme.labelLarge?.copyWith(color: Colors.white),
                    ),
                  ],
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
