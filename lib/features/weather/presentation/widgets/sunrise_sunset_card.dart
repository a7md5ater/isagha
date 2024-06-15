import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isagha/core/utils/app_enums.dart';
import 'package:isagha/features/weather/presentation/widgets/sun_action.dart';

class SunriseSunsetCard extends StatelessWidget {
  final String sunriseTime;
  final String sunsetTime;
  const SunriseSunsetCard(
      {super.key, required this.sunriseTime, required this.sunsetTime});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 10.h,
          horizontal: 10.w,
        ),
        child: Row(
          children: [
            SunAction(
              sunStatus: SunStatus.sunset,
              time: sunsetTime,
            ),
            SunAction(
              sunStatus: SunStatus.sunrise,
              time: sunriseTime,
            ),
          ],
        ),
      ),
    );
  }
}
