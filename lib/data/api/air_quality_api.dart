import 'package:air_quality_app/data/dto/air_quality_response_dto.dart';
import 'package:air_quality_app/data/dto/search_response_dto.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';

part 'air_quality_api.g.dart';

@RestApi(baseUrl: 'https://api.waqi.info/')
abstract class AirQualityApi {
  factory AirQualityApi(Dio dio, {String baseUrl}) = _AirQualityApi;

  static const String token = 'c764caaecb0236ba005285305fb23c465ea58a2e';

  @GET('/feed/{city}')
  Future<AirQualityResponseDto> getAirQuality(
    @Path() String city,
    @Query('token') String key,
  );

  @GET('/search/')
  Future<SearchResponseDto> searchForCity(
    @Query('keyword') String query,
    @Query('token') String key,
  );
}
