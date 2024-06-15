class WeatherEntity {
  final String city;
  final String icon;
  final int temp;
  final int minTemp;
  final int maxTemp;
  final int feelsLike;
  final String dayTime;
  final String sunsetDate;
  final String sunriseDate;
  final double wind;
  final int humidity;
  final int clouds;

  WeatherEntity({
    required this.city,
    required this.icon,
    required this.temp,
    required this.minTemp,
    required this.maxTemp,
    required this.feelsLike,
    required this.dayTime,
    required this.sunsetDate,
    required this.sunriseDate,
    required this.wind,
    required this.humidity,
    required this.clouds,
  });
}
