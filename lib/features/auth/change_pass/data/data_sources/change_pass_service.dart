import 'package:dio/dio.dart';
import 'package:knockknock/core/service/dio_factory.dart';

import '../../../../../core/utils/app_constants.dart';
import '../../domain/entities/change_pass_entity.dart';
import '../models/change_pass_model.dart';

abstract class ChangePassService {
  Future<ChangePassModel> userChangePass(
      ChangePassEntity changePassEntity);
}

class ChangePassServiceImpl implements ChangePassService {
  @override
  Future<ChangePassModel> userChangePass(
      ChangePassEntity changePassEntity) async {
    Dio dio = await DioFactory.getDio();
    ChangePassModel changePassModel = const ChangePassModel();

    final changePass = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.changePassUri,
      data: ChangePassModel.toJson(changePassEntity),
    );

    if (changePass.statusCode == 200) {
      if (changePass.data['status'] == 1) {
        changePassModel = ChangePassModel.fromJson(changePass.data);
        return changePassModel;
      }
    }
    return changePassModel;
  }
}
