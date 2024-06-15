part of 'weather_cubit.dart';

@freezed
class WeatherState with _$WeatherState {
  const factory WeatherState.initial() = _Initial;
  const factory WeatherState.getWeatherLoading() = _GetWeatherLoading;
  const factory WeatherState.getWeatherSuccess(WeatherEntity weatherEntity) =
      _GetWeatherSuccess;
  const factory WeatherState.getWeatherError(String errorMsg) =
      _GetWeatherError;
}
