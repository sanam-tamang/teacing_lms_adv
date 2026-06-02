import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:teaching_lms_adv/core/network/api_url.dart';

class DioClient {
  late Dio _dio;

  DioClient() {
    _dio = Dio(BaseOptions(baseUrl: kBaseUrl));
    _dio.interceptors.add(PrettyDioLogger());
  }

  Dio get dio => _dio;
}
  