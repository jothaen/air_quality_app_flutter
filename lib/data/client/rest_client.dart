import 'package:air_quality_app/data/model/air_quality_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'rest_client.g.dart';

@RestApi(baseUrl: 'https://api.waqi.info/')
abstract class RestClient {
  factory RestClient(Dio dio) = _RestClient;

  @GET('/feed/{city}')
  Future<AirQualityResponse> getAirQuality(@Path() String city, @Query('token') String key);
}
