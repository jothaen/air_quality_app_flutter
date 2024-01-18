import 'package:air_quality_app/data/client/rest_client.dart';
import 'package:air_quality_app/domain/air_quality_repository.dart';
import 'package:air_quality_app/presentation/air_quality/cubit/air_cuality_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

Future<void> setupServiceLocator() async {
  _setupData();
  _setUpRepositories();
  _setupCubits();
}

void _setupData() {
  locator
    ..registerLazySingleton(() => Dio()..interceptors.add(LogInterceptor(responseBody: true, responseHeader: false)))
    ..registerLazySingleton(() => RestClient(locator.get()));
}

void _setUpRepositories() {
  locator.registerFactory(() => AirQualityRepository(locator.get()));
}

void _setupCubits() {
  locator.registerFactory(() => AirQualityCubit(locator.get()));
}
