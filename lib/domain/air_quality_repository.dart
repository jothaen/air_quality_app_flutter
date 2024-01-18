import 'package:air_quality_app/data/client/rest_client.dart';
import 'package:air_quality_app/domain/mapper/air_quality_mapper.dart';
import 'package:air_quality_app/domain/model/air_quality.dart';

class AirQualityRepository {
  final RestClient _restClient;
  final String _token = 'c764caaecb0236ba005285305fb23c465ea58a2e';

  AirQualityRepository(this._restClient);

  Future<AirQuality> getAirQuality(String city) async {
    final result = await _restClient.getAirQuality(city, _token);
    return AirQualityMapper.map(result.data);
  }
}
