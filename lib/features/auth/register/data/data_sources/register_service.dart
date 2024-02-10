
import 'package:dio/dio.dart';

import '../../../../../core/service/dio_factory.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../domain/entities/register_entity.dart';
import '../models/register_model.dart';

abstract class RegisterService {
  Future<RegisterModel> userRegister(
      RegisterEntity registerEntity
  );
  // Future<RegisterModel> userRegister(
  //   String userName,
  //   String email,
  //   String phone,
  //   String pass,
  //   String confirmPass,
  // );
}

class RegisterServiceImpl implements RegisterService {
  @override
  Future<RegisterModel> userRegister(
      RegisterEntity registerEntity
  ) async {
    Dio dio = await DioFactory.getDio();
    RegisterModel registerModel = const RegisterModel();

    final registerUser = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.registerUri,
      data: RegisterModel.toJson(registerEntity),
    );

    if (registerUser.statusCode == 200) {
        registerModel = RegisterModel.fromJson(registerUser.data);
        // await UpdateFcmTokenService.updateUserToken(registerModel.id!);
    }
    return registerModel;
  }
}
