import 'package:air_quality_app/domain/model/air_quality.dart';

class CitySearchResult {
  CitySearchResult(this.id, this.name, this.airQualityIndex, this.airQualityNamed);

  final int id;
  final String name;
  final int airQualityIndex;
  final AirQualityNamed airQualityNamed;
}
