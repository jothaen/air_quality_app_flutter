import 'package:air_quality_app/data/api/air_quality_api.dart';
import 'package:air_quality_app/domain/mapper/air_quality_mapper.dart';
import 'package:air_quality_app/domain/model/air_quality.dart';

class AirQualityRepository {
  AirQualityRepository(this._api);

  final AirQualityApi _api;

  Future<AirQuality> getAirQuality(String city) async {
    final result = await _api.getAirQuality(city, AirQualityApi.token);
    return AirQualityMapper.map(result.data);
  }
}
