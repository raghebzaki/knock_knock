import 'package:dio/dio.dart';
import 'package:knockknock/core/service/dio_factory.dart';

import '../../../../../core/utils/app_constants.dart';
import '../../domain/entities/verify_account_entity.dart';
import '../models/verify_account_model.dart';

abstract class VerifyAccountService {
  Future<VerifyAccountModel> userVerifyAccount(
      VerifyAccountEntity verifyAccountEntity);
}

class VerifyAccountServiceImpl implements VerifyAccountService {
  @override
  Future<VerifyAccountModel> userVerifyAccount(
      VerifyAccountEntity verifyAccountEntity) async {
    Dio dio = await DioFactory.getDio();
    VerifyAccountModel verifyAccountModel = const VerifyAccountModel();

    final userAccount = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.verifyAccountUri,
      data: VerifyAccountModel.toJson(verifyAccountEntity),
    );

    if (userAccount.statusCode == 200) {
      verifyAccountModel = VerifyAccountModel.fromJson(userAccount.data);
    }
    return verifyAccountModel;
  }
}
