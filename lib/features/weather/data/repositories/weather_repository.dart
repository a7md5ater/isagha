import 'package:dartz/dartz.dart';
import 'package:intl/intl.dart';
import 'package:isagha/core/network/failures.dart';
import 'package:isagha/core/network/network_info.dart';
import 'package:isagha/core/utils/app_functions.dart';
import 'package:isagha/features/weather/data/datasources/weather_remote_data_source.dart';
import 'package:isagha/features/weather/domain/entities/weather_entity.dart';

abstract class WeatherRepository {
  Future<Either<Failure, WeatherEntity>> getWeather({required String cityName});
}

class WeatherRepositoryImpl implements WeatherRepository {
  final NetworkInfo _networkInfo;
  final WeatherRemoteDataSource _weatherRemoteDataSource;

  WeatherRepositoryImpl({
    required NetworkInfo networkInfo,
    required WeatherRemoteDataSource weatherRemoteDataSource,
  })  : _networkInfo = networkInfo,
        _weatherRemoteDataSource = weatherRemoteDataSource;
  @override
  Future<Either<Failure, WeatherEntity>> getWeather(
      {required String cityName}) async {
    if (await _networkInfo.connected()) {
      try {
        final response =
            await _weatherRemoteDataSource.getWeather(cityName: cityName);
        final weatherEntity = WeatherEntity(
            city: response.name!,
            icon: response.weather!.first.icon!,
            temp: response.main!.temp!.toInt(),
            minTemp: response.main!.tempMin!.toInt(),
            maxTemp: response.main!.tempMax!.toInt(),
            feelsLike: response.main!.feelsLike!.toInt(),
            dayTime:
                "${DateFormat.EEEE().format(AppFunctions.dateFromTimeStamp(timestamp: response.dt!))} ${DateFormat.jm().format(AppFunctions.dateFromTimeStamp(timestamp: response.dt!))}",
            sunsetDate: DateFormat.jm().format(AppFunctions.dateFromTimeStamp(
                timestamp: response.sys!.sunset!)),
            sunriseDate: DateFormat.jm().format(AppFunctions.dateFromTimeStamp(
                timestamp: response.sys!.sunrise!)),
            wind: response.wind!.speed!,
            humidity: response.main!.humidity!,
            clouds: response.clouds!.all!);
        return Right(weatherEntity);
      } catch (error) {
        return Left(
          ServerFailure(
            error: error,
          ),
        );
      }
    } else {
      return Left(
        ServerFailure(
          error: NoInternetConnection(),
        ),
      );
    }
  }
}
