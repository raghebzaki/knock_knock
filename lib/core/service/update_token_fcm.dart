import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import '../../../../../core/utils/app_constants.dart';
import '../resources/api/data_sources.dart';
import '../resources/api/dio_data_state.dart';

class UpdateFcmTokenService {

  static Future updateUserToken(num id) async {
    Dio dio = Dio();

    try {
      await dio.post(
          AppConstants.apiBaseUrl + AppConstants.updateFcmTokenUri,
          data: {
            'user_id': id,
            'fcm_device_token' : AppConstants.fcmToken,
          }
      );

    } on DioException catch (error) {
      DataFailed(error);
    } on SocketException {
      DataSource.noInternetConnection.getFailure();
    } on TimeoutException {
      DataSource.connectionTimeout.getFailure();
    }
  }
}
