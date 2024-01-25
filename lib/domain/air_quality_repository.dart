import 'package:air_quality_app/data/api/weather_api.dart';
import 'package:air_quality_app/domain/mapper/air_quality_mapper.dart';
import 'package:air_quality_app/domain/model/air_quality.dart';

class AirQualityRepository {
  final WeatherApi _api;
  final String _token = 'c764caaecb0236ba005285305fb23c465ea58a2e';

  AirQualityRepository(this._api);

  Future<AirQuality> getAirQuality(String city) async {
    final result = await _api.getAirQuality(city, _token);
    return AirQualityMapper.map(result.data);
  }
}
