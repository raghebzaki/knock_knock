import 'package:dio/dio.dart';

import '../../../../../core/service/dio_factory.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../domain/entities/forget_pass_entity.dart';
import '../models/forget_pass_model.dart';

abstract class ForgotPassService {
  Future<ForgetPassModel> forgotPass(ForgetPassEntity forgetPassEntity);
}

class ForgotPassServiceImpl implements ForgotPassService {
  @override
  Future<ForgetPassModel> forgotPass(ForgetPassEntity forgetPassEntity) async {
    Dio dio = await DioFactory.getDio();
    ForgetPassModel forgetPassModel = const ForgetPassModel();

    final userForgotPass = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.forgotPassUri,
      data: ForgetPassModel.toJson(forgetPassEntity),
    );

    if (userForgotPass.statusCode == 200) {
      forgetPassModel = ForgetPassModel.fromJson(userForgotPass.data);
    }
    return forgetPassModel;
  }
}
