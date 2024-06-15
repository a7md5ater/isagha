import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isagha/core/shared_widgets/vertical_space.dart';
import 'package:isagha/features/weather/domain/entities/weather_entity.dart';
import 'package:isagha/features/weather/presentation/widgets/additional_info_card.dart';
import 'package:isagha/features/weather/presentation/widgets/city_temp_and_name.dart';
import 'package:isagha/features/weather/presentation/widgets/sunrise_sunset_card.dart';
import 'package:isagha/features/weather/presentation/widgets/temp_details.dart';

class WeatherScreen extends StatelessWidget {
  final WeatherEntity weatherEntity;
  const WeatherScreen({super.key, required this.weatherEntity});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CityTempAndName(
                    temp: weatherEntity.temp,
                    cityName: weatherEntity.city,
                    icon: weatherEntity.icon,
                  ),
                  const VerticalSpace(height: 8),
                  TempDetails(
                    minTemp: weatherEntity.minTemp,
                    maxTemp: weatherEntity.maxTemp,
                    feelsLike: weatherEntity.feelsLike,
                    date: weatherEntity.dayTime,
                  ),
                  const VerticalSpace(height: 10),
                  SunriseSunsetCard(
                    sunriseTime: weatherEntity.sunriseDate,
                    sunsetTime: weatherEntity.sunsetDate,
                  ),
                  const VerticalSpace(height: 10),
                  AdditionalInfoCard(
                    wind: weatherEntity.wind,
                    humidity: weatherEntity.humidity,
                    clouds: weatherEntity.clouds,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
