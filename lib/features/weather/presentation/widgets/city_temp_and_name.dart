import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isagha/core/shared_widgets/circle_indicator.dart';
import 'package:isagha/core/shared_widgets/horizontal_space.dart';
import 'package:isagha/core/utils/app_colors.dart';
import 'package:isagha/core/utils/font_styles.dart';

class CityTempAndName extends StatelessWidget {
  final int temp;
  final String cityName;
  final String icon;
  const CityTempAndName(
      {super.key,
      required this.temp,
      required this.cityName,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$temp",
                    style: FontStyles.semiBold(
                        fontColor: AppColors.white, fontSize: 24),
                  ),
                  Text(
                    "°",
                    style: FontStyles.semiBold(
                        fontColor: AppColors.white, fontSize: 20),
                  ),
                ],
              ),
              Row(
                children: [
                  Text(
                    cityName,
                    style: FontStyles.semiBold(
                        fontColor: AppColors.white, fontSize: 26),
                  ),
                  const HorizontalSpace(width: 2),
                  Icon(
                    Icons.location_on,
                    size: 16.sp,
                  )
                ],
              )
            ],
          ),
        ),
        Image.network(
          "https://openweathermap.org/img/wn/$icon@2x.png",
          frameBuilder: (context, child, frame, wasSynchronouslyLoaded) {
            return frame == null
                ? const CustomCircleIndicator(size: 18)
                : child;
          },
          errorBuilder: (context, error, stackTrace) {
            return const Icon(Icons.image_not_supported_outlined);
          },
        ),
      ],
    );
  }
}
