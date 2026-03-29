import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import 'constants_api_manager.dart';

@lazySingleton
class ApiManager {
  late Dio dio;

  ApiManager() {
    dio = Dio(
      BaseOptions(
        baseUrl: AppConstants.baseURlSpecs,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
        sendTimeout: const Duration(seconds: 30),
        responseType: ResponseType.json,
        headers: {
          'Accept': 'application/json',
        },
      ),
    );


    dio.interceptors.add(
      PrettyDioLogger(
        request: true,
        requestHeader: true,
        requestBody: true,
        responseHeader: false,
        responseBody: true,
        error: true,
      ),
    );
  }

  Future<Response> get(
      String url, {
        String? baseUrl,
        Map<String, dynamic>? queryParameters,
      }) async {
    final oldBaseUrl = dio.options.baseUrl;
    if (baseUrl != null) dio.options.baseUrl = baseUrl;

    final response = await dio.get(
      url,
      queryParameters: queryParameters,
    );

    dio.options.baseUrl = oldBaseUrl;
    return response;
  }

  Future<Response> post(
      String url, {
        String? baseUrl,
        dynamic data,
        Map<String, dynamic>? queryParameters,
      }) async {
    final oldBaseUrl = dio.options.baseUrl;
    if (baseUrl != null) dio.options.baseUrl = baseUrl;

    final response = await dio.post(
      url,
      data: data,
      queryParameters: queryParameters,
    );

    dio.options.baseUrl = oldBaseUrl;
    return response;
  }
}