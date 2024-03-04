import 'dart:async';

import 'package:dio/dio.dart';
import 'package:knockknock/core/shared/models/user_data_model.dart';

import '../../../../../core/utils/app_constants.dart';


class UserBalanceService {

  static Future getBalance() async {
    Dio dio = Dio();

    final userAccount = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.getBalanceUri,
      data: {
        "user_id":UserData.id,
      }
    );
    AppConstants.userBalance=userAccount.data['data']['balance'];
  }
}
