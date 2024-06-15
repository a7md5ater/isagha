import 'package:dio/dio.dart';
import 'package:isagha/core/network/api/app_constants.dart';
import 'package:isagha/features/weather/data/models/get_weather_response.dart';
import 'package:retrofit/http.dart';
import 'package:retrofit/retrofit.dart';

part 'app_api.g.dart';

@RestApi(baseUrl: AppConstants.baseUrl)
abstract class AppApi {
  factory AppApi(Dio dio, {String baseUrl}) = _AppApi;

  @GET(AppConstants.getWeather)
  Future<GetWeatherResponse> getWeather({
    @Query('q') required String cityName,
    @Query('appid') required String apiKey,
    @Query('units') required String units,
  });
}
