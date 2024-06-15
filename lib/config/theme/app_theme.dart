import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isagha/core/utils/app_colors.dart';
import 'package:isagha/core/utils/font_styles.dart';

class AppTheme {
  static ThemeData lightTheme() {
    return ThemeData(
      /// colors
      primaryColor: AppColors.blue,
      primarySwatch: AppColors.generateMaterialColor(AppColors.blue),
      scaffoldBackgroundColor: AppColors.blue,
      splashColor: AppColors.lightGrey,

      ///app bar
      appBarTheme: AppBarTheme(
        centerTitle: true,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        elevation: 0,
        backgroundColor: AppColors.blue,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: AppColors.white,
        ),
        titleTextStyle:
            FontStyles.semiBold(fontColor: AppColors.white, fontSize: 16),
        actionsIconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),

      /// elevated button
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
        elevation: 0,
        backgroundColor: AppColors.button,
        textStyle: FontStyles.medium(
          fontColor: AppColors.lightGrey,
          fontSize: 15,
        ),
        disabledBackgroundColor: AppColors.button,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.sp)),
        minimumSize: Size(double.infinity, 55.h),
      )),

      ///card
      cardTheme: CardTheme(
        elevation: 0,
        color: AppColors.lightBlue,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.sp),
        ),
      ),

      /// input decoration
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: FontStyles.regular(
          fontColor: AppColors.black.withOpacity(0.4),
          fontSize: 16,
        ),
        fillColor: AppColors.white,
        filled: true,
        contentPadding: EdgeInsets.symmetric(vertical: 13.h, horizontal: 20.w),
        errorStyle:
            FontStyles.regular(fontColor: AppColors.red, fontSize: 11.sp),
        focusedErrorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.white),
            borderRadius: BorderRadius.circular(10.sp)),
        errorBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.white),
            borderRadius: BorderRadius.circular(10.sp)),
        enabledBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.white),
            borderRadius: BorderRadius.circular(10.sp)),
        focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: AppColors.white),
            borderRadius: BorderRadius.circular(10.sp)),
      ),

      /// icon
      iconTheme: IconThemeData(
        color: AppColors.white,
        size: 24.sp,
      ),
      // iconTheme: const IconThemeData(color: AppColors.primary)
    );
  }
}
