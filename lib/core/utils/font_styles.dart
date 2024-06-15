import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isagha/core/utils/app_fonts.dart';

class FontStyles {
  static TextStyle _getTextStyle({
    required FontWeight fontWeight,
    required Color fontColor,
    required double fontSize,
    double? letterSpacing,
    double? height,
  }) {
    return TextStyle(
      fontFamily: FontFamily.poppins,
      fontWeight: fontWeight,
      fontSize: fontSize.sp,
      color: fontColor,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  static TextStyle extraBold({
    required Color fontColor,
    double? fontSize,
    double? letterSpacing,
    double? height,
  }) {
    double size = fontSize ?? 14.sp;
    return _getTextStyle(
      fontWeight: FontWeightManager.extraBold,
      fontColor: fontColor,
      fontSize: size,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  static TextStyle bold({
    required Color fontColor,
    double? fontSize,
    double? letterSpacing,
    double? height,
  }) {
    double size = fontSize ?? 14.sp;
    return _getTextStyle(
      fontWeight: FontWeightManager.bold,
      fontColor: fontColor,
      fontSize: size,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  static TextStyle semiBold({
    required Color fontColor,
    double? fontSize,
    double? letterSpacing,
    double? height,
  }) {
    double size = fontSize ?? 14.sp;
    return _getTextStyle(
      fontWeight: FontWeightManager.semiBold,
      fontColor: fontColor,
      fontSize: size,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  static TextStyle medium({
    required Color fontColor,
    double? fontSize,
    double? letterSpacing,
    double? height,
  }) {
    double size = fontSize ?? 14.sp;
    return _getTextStyle(
      fontWeight: FontWeightManager.medium,
      fontColor: fontColor,
      fontSize: size,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  static TextStyle regular({
    required Color fontColor,
    double? fontSize,
    double? letterSpacing,
    double? height,
  }) {
    double size = fontSize ?? 14.sp;
    return _getTextStyle(
      fontWeight: FontWeightManager.regular,
      fontColor: fontColor,
      fontSize: size,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  static TextStyle light({
    required Color fontColor,
    double? fontSize,
    double? letterSpacing,
    double? height,
  }) {
    double size = fontSize ?? 14.sp;
    return _getTextStyle(
      fontWeight: FontWeightManager.light,
      fontColor: fontColor,
      fontSize: size,
      letterSpacing: letterSpacing,
      height: height,
    );
  }

  static TextStyle thin({
    required Color fontColor,
    double? fontSize,
    double? letterSpacing,
    double? height,
  }) {
    double size = fontSize ?? 14.sp;
    return _getTextStyle(
      fontWeight: FontWeightManager.thin,
      fontColor: fontColor,
      fontSize: size,
      letterSpacing: letterSpacing,
      height: height,
    );
  }
}
