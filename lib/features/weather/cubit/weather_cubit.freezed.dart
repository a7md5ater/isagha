// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWeatherLoading,
    required TResult Function(WeatherEntity weatherEntity) getWeatherSuccess,
    required TResult Function(String errorMsg) getWeatherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWeatherLoading,
    TResult? Function(WeatherEntity weatherEntity)? getWeatherSuccess,
    TResult? Function(String errorMsg)? getWeatherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeatherLoading,
    TResult Function(WeatherEntity weatherEntity)? getWeatherSuccess,
    TResult Function(String errorMsg)? getWeatherError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetWeatherLoading value) getWeatherLoading,
    required TResult Function(_GetWeatherSuccess value) getWeatherSuccess,
    required TResult Function(_GetWeatherError value) getWeatherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetWeatherLoading value)? getWeatherLoading,
    TResult? Function(_GetWeatherSuccess value)? getWeatherSuccess,
    TResult? Function(_GetWeatherError value)? getWeatherError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetWeatherLoading value)? getWeatherLoading,
    TResult Function(_GetWeatherSuccess value)? getWeatherSuccess,
    TResult Function(_GetWeatherError value)? getWeatherError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'WeatherState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWeatherLoading,
    required TResult Function(WeatherEntity weatherEntity) getWeatherSuccess,
    required TResult Function(String errorMsg) getWeatherError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWeatherLoading,
    TResult? Function(WeatherEntity weatherEntity)? getWeatherSuccess,
    TResult? Function(String errorMsg)? getWeatherError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeatherLoading,
    TResult Function(WeatherEntity weatherEntity)? getWeatherSuccess,
    TResult Function(String errorMsg)? getWeatherError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetWeatherLoading value) getWeatherLoading,
    required TResult Function(_GetWeatherSuccess value) getWeatherSuccess,
    required TResult Function(_GetWeatherError value) getWeatherError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetWeatherLoading value)? getWeatherLoading,
    TResult? Function(_GetWeatherSuccess value)? getWeatherSuccess,
    TResult? Function(_GetWeatherError value)? getWeatherError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetWeatherLoading value)? getWeatherLoading,
    TResult Function(_GetWeatherSuccess value)? getWeatherSuccess,
    TResult Function(_GetWeatherError value)? getWeatherError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements WeatherState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$GetWeatherLoadingImplCopyWith<$Res> {
  factory _$$GetWeatherLoadingImplCopyWith(_$GetWeatherLoadingImpl value,
          $Res Function(_$GetWeatherLoadingImpl) then) =
      __$$GetWeatherLoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetWeatherLoadingImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$GetWeatherLoadingImpl>
    implements _$$GetWeatherLoadingImplCopyWith<$Res> {
  __$$GetWeatherLoadingImplCopyWithImpl(_$GetWeatherLoadingImpl _value,
      $Res Function(_$GetWeatherLoadingImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetWeatherLoadingImpl implements _GetWeatherLoading {
  const _$GetWeatherLoadingImpl();

  @override
  String toString() {
    return 'WeatherState.getWeatherLoading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetWeatherLoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWeatherLoading,
    required TResult Function(WeatherEntity weatherEntity) getWeatherSuccess,
    required TResult Function(String errorMsg) getWeatherError,
  }) {
    return getWeatherLoading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWeatherLoading,
    TResult? Function(WeatherEntity weatherEntity)? getWeatherSuccess,
    TResult? Function(String errorMsg)? getWeatherError,
  }) {
    return getWeatherLoading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeatherLoading,
    TResult Function(WeatherEntity weatherEntity)? getWeatherSuccess,
    TResult Function(String errorMsg)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherLoading != null) {
      return getWeatherLoading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetWeatherLoading value) getWeatherLoading,
    required TResult Function(_GetWeatherSuccess value) getWeatherSuccess,
    required TResult Function(_GetWeatherError value) getWeatherError,
  }) {
    return getWeatherLoading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetWeatherLoading value)? getWeatherLoading,
    TResult? Function(_GetWeatherSuccess value)? getWeatherSuccess,
    TResult? Function(_GetWeatherError value)? getWeatherError,
  }) {
    return getWeatherLoading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetWeatherLoading value)? getWeatherLoading,
    TResult Function(_GetWeatherSuccess value)? getWeatherSuccess,
    TResult Function(_GetWeatherError value)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherLoading != null) {
      return getWeatherLoading(this);
    }
    return orElse();
  }
}

abstract class _GetWeatherLoading implements WeatherState {
  const factory _GetWeatherLoading() = _$GetWeatherLoadingImpl;
}

/// @nodoc
abstract class _$$GetWeatherSuccessImplCopyWith<$Res> {
  factory _$$GetWeatherSuccessImplCopyWith(_$GetWeatherSuccessImpl value,
          $Res Function(_$GetWeatherSuccessImpl) then) =
      __$$GetWeatherSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WeatherEntity weatherEntity});
}

/// @nodoc
class __$$GetWeatherSuccessImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$GetWeatherSuccessImpl>
    implements _$$GetWeatherSuccessImplCopyWith<$Res> {
  __$$GetWeatherSuccessImplCopyWithImpl(_$GetWeatherSuccessImpl _value,
      $Res Function(_$GetWeatherSuccessImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? weatherEntity = null,
  }) {
    return _then(_$GetWeatherSuccessImpl(
      null == weatherEntity
          ? _value.weatherEntity
          : weatherEntity // ignore: cast_nullable_to_non_nullable
              as WeatherEntity,
    ));
  }
}

/// @nodoc

class _$GetWeatherSuccessImpl implements _GetWeatherSuccess {
  const _$GetWeatherSuccessImpl(this.weatherEntity);

  @override
  final WeatherEntity weatherEntity;

  @override
  String toString() {
    return 'WeatherState.getWeatherSuccess(weatherEntity: $weatherEntity)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherSuccessImpl &&
            (identical(other.weatherEntity, weatherEntity) ||
                other.weatherEntity == weatherEntity));
  }

  @override
  int get hashCode => Object.hash(runtimeType, weatherEntity);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherSuccessImplCopyWith<_$GetWeatherSuccessImpl> get copyWith =>
      __$$GetWeatherSuccessImplCopyWithImpl<_$GetWeatherSuccessImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWeatherLoading,
    required TResult Function(WeatherEntity weatherEntity) getWeatherSuccess,
    required TResult Function(String errorMsg) getWeatherError,
  }) {
    return getWeatherSuccess(weatherEntity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWeatherLoading,
    TResult? Function(WeatherEntity weatherEntity)? getWeatherSuccess,
    TResult? Function(String errorMsg)? getWeatherError,
  }) {
    return getWeatherSuccess?.call(weatherEntity);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeatherLoading,
    TResult Function(WeatherEntity weatherEntity)? getWeatherSuccess,
    TResult Function(String errorMsg)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherSuccess != null) {
      return getWeatherSuccess(weatherEntity);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetWeatherLoading value) getWeatherLoading,
    required TResult Function(_GetWeatherSuccess value) getWeatherSuccess,
    required TResult Function(_GetWeatherError value) getWeatherError,
  }) {
    return getWeatherSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetWeatherLoading value)? getWeatherLoading,
    TResult? Function(_GetWeatherSuccess value)? getWeatherSuccess,
    TResult? Function(_GetWeatherError value)? getWeatherError,
  }) {
    return getWeatherSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetWeatherLoading value)? getWeatherLoading,
    TResult Function(_GetWeatherSuccess value)? getWeatherSuccess,
    TResult Function(_GetWeatherError value)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherSuccess != null) {
      return getWeatherSuccess(this);
    }
    return orElse();
  }
}

abstract class _GetWeatherSuccess implements WeatherState {
  const factory _GetWeatherSuccess(final WeatherEntity weatherEntity) =
      _$GetWeatherSuccessImpl;

  WeatherEntity get weatherEntity;
  @JsonKey(ignore: true)
  _$$GetWeatherSuccessImplCopyWith<_$GetWeatherSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetWeatherErrorImplCopyWith<$Res> {
  factory _$$GetWeatherErrorImplCopyWith(_$GetWeatherErrorImpl value,
          $Res Function(_$GetWeatherErrorImpl) then) =
      __$$GetWeatherErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String errorMsg});
}

/// @nodoc
class __$$GetWeatherErrorImplCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$GetWeatherErrorImpl>
    implements _$$GetWeatherErrorImplCopyWith<$Res> {
  __$$GetWeatherErrorImplCopyWithImpl(
      _$GetWeatherErrorImpl _value, $Res Function(_$GetWeatherErrorImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorMsg = null,
  }) {
    return _then(_$GetWeatherErrorImpl(
      null == errorMsg
          ? _value.errorMsg
          : errorMsg // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$GetWeatherErrorImpl implements _GetWeatherError {
  const _$GetWeatherErrorImpl(this.errorMsg);

  @override
  final String errorMsg;

  @override
  String toString() {
    return 'WeatherState.getWeatherError(errorMsg: $errorMsg)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetWeatherErrorImpl &&
            (identical(other.errorMsg, errorMsg) ||
                other.errorMsg == errorMsg));
  }

  @override
  int get hashCode => Object.hash(runtimeType, errorMsg);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetWeatherErrorImplCopyWith<_$GetWeatherErrorImpl> get copyWith =>
      __$$GetWeatherErrorImplCopyWithImpl<_$GetWeatherErrorImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() getWeatherLoading,
    required TResult Function(WeatherEntity weatherEntity) getWeatherSuccess,
    required TResult Function(String errorMsg) getWeatherError,
  }) {
    return getWeatherError(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? getWeatherLoading,
    TResult? Function(WeatherEntity weatherEntity)? getWeatherSuccess,
    TResult? Function(String errorMsg)? getWeatherError,
  }) {
    return getWeatherError?.call(errorMsg);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? getWeatherLoading,
    TResult Function(WeatherEntity weatherEntity)? getWeatherSuccess,
    TResult Function(String errorMsg)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherError != null) {
      return getWeatherError(errorMsg);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_GetWeatherLoading value) getWeatherLoading,
    required TResult Function(_GetWeatherSuccess value) getWeatherSuccess,
    required TResult Function(_GetWeatherError value) getWeatherError,
  }) {
    return getWeatherError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_GetWeatherLoading value)? getWeatherLoading,
    TResult? Function(_GetWeatherSuccess value)? getWeatherSuccess,
    TResult? Function(_GetWeatherError value)? getWeatherError,
  }) {
    return getWeatherError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_GetWeatherLoading value)? getWeatherLoading,
    TResult Function(_GetWeatherSuccess value)? getWeatherSuccess,
    TResult Function(_GetWeatherError value)? getWeatherError,
    required TResult orElse(),
  }) {
    if (getWeatherError != null) {
      return getWeatherError(this);
    }
    return orElse();
  }
}

abstract class _GetWeatherError implements WeatherState {
  const factory _GetWeatherError(final String errorMsg) = _$GetWeatherErrorImpl;

  String get errorMsg;
  @JsonKey(ignore: true)
  _$$GetWeatherErrorImplCopyWith<_$GetWeatherErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
