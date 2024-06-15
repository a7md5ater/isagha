import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isagha/core/helpers/extensions.dart';
import 'package:isagha/core/shared_widgets/vertical_space.dart';
import 'package:isagha/core/utils/app_colors.dart';
import 'package:isagha/core/utils/app_enums.dart';
import 'package:isagha/core/utils/font_styles.dart';

class AdditionalType extends StatelessWidget {
  final WeatherInfo weatherInfo;
  final String value;
  const AdditionalType({
    super.key,
    required this.weatherInfo,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Image.asset(
          weatherInfo.image(),
          width: 40.w,
          height: 40.h,
        ),
        const VerticalSpace(height: 2),
        Text(
          weatherInfo.title(),
          style: FontStyles.medium(fontColor: AppColors.white),
        ),
        const VerticalSpace(height: 2),
        Text(
          value,
          style: FontStyles.medium(fontColor: AppColors.lightGrey),
        ),
      ],
    );
  }
}
