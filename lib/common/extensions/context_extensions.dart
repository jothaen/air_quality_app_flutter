import 'package:air_quality_app/generated/l10n.dart';
import 'package:flutter/cupertino.dart';

extension ContextExtensions on BuildContext {
  I10n get i10n => I10n.of(this);
}
