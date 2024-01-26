import 'package:air_quality_app/data/api/air_quality_api.dart';
import 'package:air_quality_app/domain/air_quality_repository.dart';
import 'package:air_quality_app/domain/favorites_repository.dart';
import 'package:air_quality_app/domain/search_repository.dart';
import 'package:air_quality_app/presentation/search/cubit/search_cubit.dart';
import 'package:air_quality_app/presentation/station_details/cubit/station_details_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

final locator = GetIt.instance;

void setupServiceLocator() {
  _setupData();
  _setUpRepositories();
  _setupCubits();
}

void _setupData() {
  locator
    ..registerLazySingleton(() => Dio()..interceptors.add(LogInterceptor(responseBody: true, responseHeader: false)))
    ..registerLazySingleton(() => AirQualityApi(locator.get()))
    ..registerLazySingleton<HiveInterface>(() => Hive);
}

void _setUpRepositories() {
  locator
    ..registerFactory(() => AirQualityRepository(locator.get()))
    ..registerFactory(() => SearchRepository(locator.get()))
    ..registerFactory(() => FavoritesRepository(locator.get()));
}

void _setupCubits() {
  locator
    ..registerFactory(() => StationDetailsCubit(locator.get(), locator.get()))
    ..registerFactory(() => SearchCubit(locator.get()));
}
