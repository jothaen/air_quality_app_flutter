import 'package:air_quality_app/generated/l10n.dart';
import 'package:flutter/material.dart';

extension ContextExtensions on BuildContext {
  I10n get i10n => I10n.of(this);
  ThemeData get theme => Theme.of(this);
  NavigatorState get nav => Navigator.of(this);

  void showSnackBar(String text) {
    final snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(this).showSnackBar(snackBar);
  }
}
