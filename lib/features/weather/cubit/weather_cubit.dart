import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:isagha/features/weather/data/repositories/weather_repository.dart';
import 'package:isagha/features/weather/domain/entities/weather_entity.dart';

part 'weather_state.dart';
part 'weather_cubit.freezed.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherRepository _weatherRepository;
  WeatherCubit({required WeatherRepository weatherRepository})
      : _weatherRepository = weatherRepository,
        super(const WeatherState.initial());

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController searchController = TextEditingController();
  void getWeather() async {
    emit(const WeatherState.getWeatherLoading());
    final response =
        await _weatherRepository.getWeather(cityName: searchController.text);
    response.fold(
      (failure) => emit(WeatherState.getWeatherError(failure.getMessage())),
      (weatherEntity) {
        searchController.clear();
        emit(WeatherState.getWeatherSuccess(weatherEntity));
      },
    );
  }
}
