import 'dart:io';

import 'package:dio/dio.dart';
import 'package:teaching_lms_adv/core/error/failure.dart';

class ErrorHandler {
 static Failure handleException(dynamic e) {
    if (e is DioException) {
      if (e.error is SocketException) {
        return InternetFailure();
      }
      return SomethingWentWrongFailure();
    } else {
      return SomethingWentWrongFailure();
    }
  }
}
