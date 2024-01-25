import 'package:air_quality_app/common/extensions/context_extensions.dart';
import 'package:air_quality_app/domain/model/air_quality.dart';
import 'package:flutter/material.dart';

class AirQualityValuesMapper {
  AirQualityValuesMapper._();

  static String getMappedName(BuildContext context, AirQualityNamed airQualityNamed) {
    return switch (airQualityNamed) {
      AirQualityNamed.veryGood => context.i10n.airQualityVeryGood,
      AirQualityNamed.good => context.i10n.airQualityGood,
      AirQualityNamed.fair => context.i10n.airQualityFair,
      AirQualityNamed.poor => context.i10n.airQualityPoor,
      AirQualityNamed.veryPoor => context.i10n.airQualityVeryPoor,
      AirQualityNamed.hazardous => context.i10n.airQualityHazardous,
    };
  }

  // TODO(piotrek): Find better colors :)
  static Color getMappedColor(AirQualityNamed airQualityNamed) {
    return switch (airQualityNamed) {
      AirQualityNamed.veryGood => Colors.greenAccent,
      AirQualityNamed.good => Colors.green,
      AirQualityNamed.fair => Colors.yellow,
      AirQualityNamed.poor => Colors.orangeAccent,
      AirQualityNamed.veryPoor => Colors.orange,
      AirQualityNamed.hazardous => Colors.red,
    };
  }
}
