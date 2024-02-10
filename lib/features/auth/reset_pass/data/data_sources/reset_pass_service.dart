import 'package:dio/dio.dart';
import 'package:knockknock/core/service/dio_factory.dart';

import '../../../../../core/utils/app_constants.dart';
import '../../domain/entities/reset_entity.dart';
import '../models/reset_pass_model.dart';

abstract class ResetPassService {
  Future<ResetPassModel> userVerifyAccount(
      ResetPassEntity verifyAccountEntity);
}

class ResetPassServiceImpl implements ResetPassService {
  @override
  Future<ResetPassModel> userVerifyAccount(
      ResetPassEntity resetPassEntity) async {
    Dio dio = await DioFactory.getDio();
    ResetPassModel resetPassModel = const ResetPassModel();

    final userAccount = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.resetPassUri,
      data: ResetPassModel.toJson(resetPassEntity),
    );

    if (userAccount.statusCode == 200) {
      resetPassModel = ResetPassModel.fromJson(userAccount.data);
    }
    return resetPassModel;
  }
}
