import 'package:air_quality_app/common/extensions/context_extensions.dart';
import 'package:air_quality_app/domain/model/air_quality.dart';
import 'package:flutter/material.dart';

class TextMapper {
  TextMapper._();

  static String mapAirQuality(BuildContext context, AirQualityNamed airQualityNamed) {
    return switch (airQualityNamed) {
      AirQualityNamed.veryGood => context.i10n.airQualityVeryGood,
      AirQualityNamed.good => context.i10n.airQualityGood,
      AirQualityNamed.fair => context.i10n.airQualityFair,
      AirQualityNamed.poor => context.i10n.airQualityPoor,
      AirQualityNamed.veryPoor => context.i10n.airQualityVeryPoor,
      AirQualityNamed.hazardous => context.i10n.airQualityHazardous,
    };
  }
}
