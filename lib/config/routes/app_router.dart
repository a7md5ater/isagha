import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:isagha/app/injector.dart';
import 'package:isagha/config/routes/routes.dart';
import 'package:isagha/features/weather/cubit/weather_cubit.dart';
import 'package:isagha/features/weather/domain/entities/weather_entity.dart';
import 'package:isagha/features/weather/presentation/screens/search_screen.dart';
import 'package:isagha/features/weather/presentation/screens/weather_screen.dart';

class AppRouter {
  static AppRouter? _instance;
  AppRouter._internal();
  factory AppRouter() {
    _instance ??= AppRouter._internal();
    return _instance!;
  }

  static final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey(
    debugLabel: 'root',
  );

  static final GlobalKey<NavigatorState> sectionANavigatorKey =
      GlobalKey<NavigatorState>(debugLabel: 'sectionANav');

  final router = GoRouter(
    initialLocation: Routes.search,
    debugLogDiagnostics: true,
    navigatorKey: _rootNavigatorKey,
    routes: [
      GoRoute(
        path: Routes.search,
        name: Routes.search,
        builder: (context, state) => BlocProvider(
          create: (context) => di<WeatherCubit>(),
          child: const SearchScreen(),
        ),
      ),
      GoRoute(
        path: "/${Routes.weather}",
        name: Routes.weather,
        builder: (context, state) {
          final weatherEntity = state.extra as WeatherEntity;
          return WeatherScreen(weatherEntity: weatherEntity);
        },
      ),
    ],
  );
}
