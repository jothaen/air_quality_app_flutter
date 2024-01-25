import 'package:air_quality_app/data/model/air_quality_response.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'weather_api.g.dart';

@RestApi(baseUrl: 'https://api.waqi.info/')
abstract class WeatherApi {
  factory WeatherApi(Dio dio, {String baseUrl}) = _WeatherApi;

  @GET('/feed/{city}')
  Future<AirQualityResponse> getAirQuality(
    @Path() String city,
    @Query('token') String key,
  );
}
