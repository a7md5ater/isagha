import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isagha/core/shared_widgets/circle_indicator.dart';
import 'package:isagha/core/utils/app_colors.dart';
import 'package:isagha/core/utils/font_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final bool loadingCondition;
  final void Function() onTap;
  final Color? backgroundColor;
  final Color? textColor;
  const CustomButton({
    super.key,
    required this.text,
    this.loadingCondition = false,
    required this.onTap,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: loadingCondition ? null : onTap,
      child: loadingCondition
          ? CustomCircleIndicator(color: AppColors.white, size: 20.sp)
          : Text(
              text,
              style: FontStyles.bold(
                fontColor: AppColors.white,
                fontSize: 16.sp,
              ),
              textAlign: TextAlign.center,
            ),
    );
  }
}
