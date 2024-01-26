import 'package:air_quality_app/domain/model/air_quality.dart';

class AirQualityNamedMapper {
  AirQualityNamedMapper._();

  static AirQualityNamed mapAirQualityNamed(int aqi) {
    if (aqi <= 33) {
      return AirQualityNamed.veryGood;
    } else if (aqi <= 66) {
      return AirQualityNamed.good;
    } else if (aqi <= 99) {
      return AirQualityNamed.fair;
    } else if (aqi <= 149) {
      return AirQualityNamed.poor;
    } else if (aqi <= 200) {
      return AirQualityNamed.veryPoor;
    } else {
      return AirQualityNamed.hazardous;
    }
  }
}
