import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isagha/core/helpers/extensions.dart';
import 'package:isagha/core/shared_widgets/vertical_space.dart';
import 'package:isagha/core/utils/app_colors.dart';
import 'package:isagha/core/utils/app_enums.dart';
import 'package:isagha/core/utils/font_styles.dart';

class SunAction extends StatelessWidget {
  final SunStatus sunStatus;
  final String time;

  const SunAction({
    super.key,
    required this.sunStatus,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          Text(sunStatus.title(),
              style: FontStyles.medium(fontColor: AppColors.white)),
          const VerticalSpace(height: 5),
          Text(
            time,
            style: FontStyles.medium(fontColor: AppColors.white),
          ),
          const VerticalSpace(height: 8),
          Image.asset(
            sunStatus.image(),
            width: double.infinity,
            height: 100.h,
          )
        ],
      ),
    );
  }
}
