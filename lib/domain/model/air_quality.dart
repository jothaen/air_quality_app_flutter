// ignore_for_file: prefer-correct-identifier-length
class AirQuality {
  AirQuality(
    this.cityId,
    this.dateTime,
    this.locationName,
    this.airQualityIndex,
    this.airQualityNamed,
    this.pollutionData,
  );
  final int cityId;
  final String dateTime;
  final String locationName;
  final int airQualityIndex;
  final AirQualityNamed airQualityNamed;
  final List<PollutionData> pollutionData;
}

enum AirQualityNamed {
  veryGood, // 0-33
  good, // 34-66
  fair, // 67-99
  poor, // 100-149
  veryPoor, // 150-200
  hazardous, // 200+
}

enum Pollutant {
  pm10('PM10', 'µg/m\u00B3', 45),
  pm25('PM2.5', 'µg/m\u00B3', 15),
  no2('NO\u2082', 'µg/m\u00B3', 25),
  co('CO', 'µg/m\u00B3', 4000);

  const Pollutant(this.name, this.unit, this.normByWHO);
  final String name;
  final int normByWHO;
  final String unit;
}

class PollutionData {
  PollutionData(this.name, this.value, this.unit, this.percentage);

  final String name;
  final double value;
  final String unit;
  final int percentage;
}
