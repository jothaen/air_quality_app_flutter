class AirQuality {
  final String dateTime;
  final String locationName;
  final int airQualityIndex;
  final AirQualityNamed airQualityNamed;

  AirQuality(this.dateTime, this.locationName, this.airQualityIndex, this.airQualityNamed);
}

enum AirQualityNamed {
  veryGood, // 0-33
  good, // 34-66
  fair, // 67-99
  poor, // 100-149
  veryPoor, // 150-200
  hazardous, // 200+
}
