import 'package:isagha/core/network/api/app_api.dart';
import 'package:isagha/core/network/dio_factory.dart';
import 'package:isagha/core/network/network_info.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:isagha/features/weather/cubit/weather_cubit.dart';
import 'package:isagha/features/weather/data/datasources/weather_remote_data_source.dart';
import 'package:isagha/features/weather/data/repositories/weather_repository.dart';

final di = GetIt.instance;

void setupGetIt() async {
  // NETWORK INFO
  di.registerLazySingleton<NetworkInfo>(
      () => NetworkInfoImpl(connectionChecker: di()));
  di.registerLazySingleton<InternetConnectionChecker>(
      () => InternetConnectionChecker());

  /// APIS
  di.registerLazySingleton<AppApi>(() => AppApi(di()));

  // DIO
  di.registerLazySingleton<Dio>(() => DioFactory.getDio());

  // WEATHER
  di.registerLazySingleton<WeatherCubit>(
      () => WeatherCubit(weatherRepository: di()));
  di.registerLazySingleton<WeatherRemoteDataSource>(
      () => WeatherRemoteDataSourceImpl(api: di()));
  di.registerLazySingleton<WeatherRepository>(() => WeatherRepositoryImpl(
        networkInfo: di(),
        weatherRemoteDataSource: di(),
      ));
}
