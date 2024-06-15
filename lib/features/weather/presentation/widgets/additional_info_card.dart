import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isagha/core/utils/app_enums.dart';
import 'package:isagha/features/weather/presentation/widgets/additional_type.dart';

class AdditionalInfoCard extends StatelessWidget {
  final double wind;
  final int humidity;
  final int clouds;
  const AdditionalInfoCard(
      {super.key,
      required this.wind,
      required this.humidity,
      required this.clouds});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 15.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            AdditionalType(
              weatherInfo: WeatherInfo.clouds,
              value: '$clouds',
            ),
            AdditionalType(
              weatherInfo: WeatherInfo.wind,
              value: '$wind km/h',
            ),
            AdditionalType(
              weatherInfo: WeatherInfo.humidity,
              value: '$humidity%',
            ),
          ],
        ),
      ),
    );
  }
}
