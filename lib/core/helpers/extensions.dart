import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:isagha/core/utils/app_colors.dart';
import 'package:isagha/core/utils/app_enums.dart';
import 'package:isagha/core/utils/app_images.dart';
import 'package:isagha/core/utils/font_styles.dart';
import 'package:motion_toast/motion_toast.dart';

extension Toast on BuildContext {
  void toast({
    required String message,
  }) {
    MotionToast(
      primaryColor: AppColors.button,
      secondaryColor: AppColors.white,
      icon: Icons.error,
      description: Text(
        message,
        style: FontStyles.medium(
          fontColor: AppColors.white,
          fontSize: 13,
        ),
        maxLines: 5,
      ),
      height: 80.h,
      width: 360.w,
      toastDuration: const Duration(seconds: 5),
    ).show(this);
  }
}

extension NavigationExt on BuildContext {
  void popUntil(String routeName) => GoRouter.of(this).popUntil(routeName);
}

extension GoRouterExt on GoRouter {
  void popUntil(String routeName) {
    List routeStacks = [...routerDelegate.currentConfiguration.routes];

    for (int i = routeStacks.length - 1; i >= 0; i--) {
      RouteBase route = routeStacks[i];
      if (route is GoRoute) {
        if (route.name == routeName) break;
        if (i != 0 && routeStacks[i - 1] is ShellRoute) {
          RouteMatchList matchList = routerDelegate.currentConfiguration;
          restore(matchList.remove(matchList.matches.last));
        } else {
          pop();
        }
      }
    }
  }
}

extension BottomSheet on BuildContext {
  Future<dynamic> bottomSheet({required Widget child, bool? isDismissible}) {
    return showModalBottomSheet(
      context: this,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      isDismissible: isDismissible ?? true,
      builder: (_) {
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 5.w),
          child: Container(
            decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4.sp),
                  topRight: Radius.circular(4.sp),
                )),
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 12.h, horizontal: 16.w),
              child: child,
            ),
          ),
        );
      },
    );
  }
}

extension SunStatusExt on SunStatus {
  String title() {
    switch (this) {
      case SunStatus.sunset:
        return 'Sunset';
      case SunStatus.sunrise:
        return 'Sunrise';
    }
  }

  String image() {
    switch (this) {
      case SunStatus.sunset:
        return AppImages.sunset;
      case SunStatus.sunrise:
        return AppImages.sunrise;
    }
  }
}

extension WeatherInfoExt on WeatherInfo {
  String title() {
    switch (this) {
      case WeatherInfo.clouds:
        return 'Clouds';
      case WeatherInfo.wind:
        return 'Wind';
      case WeatherInfo.humidity:
        return 'Humidity';
    }
  }

  String image() {
    switch (this) {
      case WeatherInfo.clouds:
        return AppImages.clouds;
      case WeatherInfo.wind:
        return AppImages.wind;
      case WeatherInfo.humidity:
        return AppImages.humidity;
    }
  }
}
