import 'package:air_quality_app/domain/model/air_quality_named.dart';
import 'package:air_quality_app/domain/model/pollution_data.dart';

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
