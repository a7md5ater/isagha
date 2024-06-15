import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:isagha/config/routes/routes.dart';
import 'package:isagha/core/helpers/extensions.dart';
import 'package:isagha/core/shared_widgets/button.dart';
import 'package:isagha/features/weather/cubit/weather_cubit.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WeatherCubit, WeatherState>(
      listener: (context, state) {
        state.maybeWhen(
          getWeatherError: (errorMsg) => context.toast(message: errorMsg),
          getWeatherSuccess: (weatherEntity) => context.pushNamed(
            Routes.weather,
            extra: weatherEntity,
          ),
          orElse: () {},
        );
      },
      builder: (context, state) {
        return CustomButton(
          text: "Search",
          loadingCondition: state == const WeatherState.getWeatherLoading(),
          onTap: () {
            if (context.read<WeatherCubit>().formKey.currentState!.validate()) {
              context.read<WeatherCubit>().getWeather();
            }
          },
        );
      },
    );
  }
}
