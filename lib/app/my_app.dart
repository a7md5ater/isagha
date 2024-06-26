import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isagha/config/routes/app_router.dart';
import 'package:isagha/config/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final orientation = MediaQuery.orientationOf(context);
    final width = MediaQuery.sizeOf(context).width;
    final height = MediaQuery.sizeOf(context).height;
    bool isMobile = (orientation == Orientation.portrait && width < 600) ||
        (orientation == Orientation.landscape && height < 600);

    return ScreenUtilInit(
      designSize: isMobile ? const Size(390, 844) : const Size(600, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) => MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: AppTheme.lightTheme(),
        routerConfig: AppRouter().router,
      ),
    );
  }
}
