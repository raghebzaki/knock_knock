import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../core/utils/app_constants.dart';
import '../router/router.dart';
import '../shared/models/user_data_model.dart';

class DeleteAccountService {
  Dio dio = Dio();

  Future deleteUserAccount(BuildContext context) async {

    final userAccount = await dio.post(
        AppConstants.apiBaseUrl + AppConstants.deleteUserAccountUri,
        data: {
          'user_id': UserData.id,
        });

    if (userAccount.statusCode == 200) {
      if (userAccount.data['status'] == 1) {
        if(context.mounted){
          context.defaultSnackBar(
            "Account Deleted",
          );
          Navigator.pushNamed(context, loginPageRoute,);
        }
      } else {
        if(context.mounted){
          context.defaultSnackBar(
            "Couldn't Delete Account",
          );
        }
      }
    } else {
      if(context.mounted){
        context.defaultSnackBar(
          "Couldn't Delete Account",
        );
      }
    }
  }
}
