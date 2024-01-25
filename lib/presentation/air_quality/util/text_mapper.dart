import 'package:air_quality_app/domain/model/air_quality.dart';

class TextMapper {
  TextMapper._();

  static String mapAirQuality(AirQualityNamed airQualityNamed) {
    return switch (airQualityNamed) {
      AirQualityNamed.veryGood => 'Very Good! 😍',
      AirQualityNamed.good => 'Good 😊',
      AirQualityNamed.fair => 'Fair 🙂',
      AirQualityNamed.poor => 'Poor 😐',
      AirQualityNamed.veryPoor => 'Very Poor 😠',
      AirQualityNamed.hazardous => 'Hazardous 🤬',
    };
  }
}
