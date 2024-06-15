import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:isagha/core/shared_widgets/text_field_with_title.dart';
import 'package:isagha/core/shared_widgets/vertical_space.dart';
import 'package:isagha/features/weather/cubit/weather_cubit.dart';
import 'package:isagha/features/weather/presentation/widgets/search_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.w),
          child: Form(
            key: context.read<WeatherCubit>().formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFieldWithTitle(
                  controller: context.read<WeatherCubit>().searchController,
                  title: "City Name",
                  hint: "enter city name",
                  inputType: TextInputType.name,
                ),
                const VerticalSpace(height: 30),
                const SearchButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
