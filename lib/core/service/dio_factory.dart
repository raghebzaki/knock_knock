import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../utils/app_constants.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();

  static Dio? dio;

  static Future<Dio> getDio() async {
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = const Duration(
          milliseconds: AppConstants.apiTimeOut,
        )
        ..options.receiveTimeout = const Duration(
          milliseconds: AppConstants.apiTimeOut,
        );

      // String language = CacheHelper.getAppLang();

      Map<String, String> headers = {
        "content-type": AppConstants.applicationJson,
        "accept": AppConstants.applicationJson,
        // "authorization": AppConstants.apiToken,
        // "language": language,
      };

      dio!.options = BaseOptions(
        baseUrl: AppConstants.apiBaseUrl,
        headers: headers,
        receiveTimeout: const Duration(
          milliseconds: AppConstants.apiTimeOut,
        ),
        sendTimeout: const Duration(
          milliseconds: AppConstants.apiTimeOut,
        ),
      );

      addDioInterceptor();

      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    if (!kReleaseMode) {
      dio!.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: true,
          responseBody: true,
          responseHeader: false,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
    }
  }
}
