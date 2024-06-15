import 'package:dio/dio.dart';
import 'package:isagha/core/network/errors/error_model.dart';

abstract class Failure {
  String getMessage();
}

class NoInternetConnection implements Exception {}

class ServerFailure extends Failure {
  final Object error;

  ServerFailure({required this.error});

  String handleException() {
    late String errorMsg;
    if (error is DioException) {
      DioException exception = error as DioException;
      switch (exception.type) {
        case DioExceptionType.cancel:
          errorMsg = "request cancelled";
          break;
        case DioExceptionType.connectionTimeout:
          errorMsg = "connection timeout";
          break;
        case DioExceptionType.unknown:
          errorMsg = error.toString();
          break;
        case DioExceptionType.receiveTimeout:
          errorMsg = "receive timeout";
          break;
        case DioExceptionType.badResponse:
          try {
            final errorModel = ErrorModel.fromJson(exception.response!.data);
            errorMsg = errorModel.message ?? "unknown";
          } catch (error) {
            errorMsg = error.toString();
          }

          break;
        case DioExceptionType.sendTimeout:
          errorMsg = "send timeout";
          break;
        case DioExceptionType.badCertificate:
          errorMsg = "bad certificate";
          break;
        case DioExceptionType.connectionError:
          errorMsg = "connection error";
          break;
      }
    } else if (error is NoInternetConnection) {
      errorMsg = "There is no internet connection.";
    } else {
      errorMsg = error.toString();
    }
    return errorMsg;
  }

  @override
  String getMessage() => handleException();
}
