import 'package:air_quality_app/data/model/air_quality_response.dart';
import 'package:air_quality_app/domain/model/air_quality.dart';

class AirQualityMapper {
  AirQualityMapper._();

  static AirQuality map(AirQualityData data) {
    return AirQuality(data.time.timeString, data.city.name, data.aqi, _mapAirQualityNamed(data.aqi));
  }

  static AirQualityNamed _mapAirQualityNamed(int aqi) {
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
