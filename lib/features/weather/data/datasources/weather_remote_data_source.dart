import 'package:isagha/core/network/api/app_api.dart';
import 'package:isagha/core/network/api/app_constants.dart';
import 'package:isagha/features/weather/data/models/get_weather_response.dart';

abstract class WeatherRemoteDataSource {
  Future<GetWeatherResponse> getWeather({required String cityName});
}

class WeatherRemoteDataSourceImpl implements WeatherRemoteDataSource {
  final AppApi _api;

  WeatherRemoteDataSourceImpl({required AppApi api}) : _api = api;
  @override
  Future<GetWeatherResponse> getWeather({required String cityName}) async {
    return _api.getWeather(
      cityName: cityName,
      apiKey: AppConstants.apiKey,
      units: 'metric',
    );
  }
}
