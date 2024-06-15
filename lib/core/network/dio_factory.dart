import 'package:dio/dio.dart';

class DioFactory {
  DioFactory._();

  static Dio? _dio;

  static Dio getDio() {
    Duration timeOut = const Duration(seconds: 30);
    if (_dio == null) {
      _dio = Dio();
      _dio!
        ..options.headers = {
          // 'Accept': 'text/plain',
          'Accept': 'application/json',
          'Content-Type': 'application/json',
        }
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut;

      _addDioInterceptor();
      return _dio!;
    } else {
      return _dio!;
    }
  }

  static void _addDioInterceptor() {
    _dio!.interceptors.add(
      LogInterceptor(
          request: true,
          requestBody: true,
          requestHeader: true,
          responseBody: true,
          responseHeader: true,
          error: true),
    );
  }
}
