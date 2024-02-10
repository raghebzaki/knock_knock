import 'package:dio/dio.dart';

import '../../../../../core/service/dio_factory.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../../../../generated/l10n.dart';

abstract class CheckRegisteredEmailService {
  Future<String?> checkEmail(String email);
}

class CheckRegisteredEmailServiceImpl implements CheckRegisteredEmailService {

  @override
  Future<String?> checkEmail(String email) async {
    Dio dio = await DioFactory.getDio();

    final checkEmailRegister = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.checkEmailRegisterUri,
      data: {
        'email': email,
      },
    );

    if (checkEmailRegister.statusCode == 200) {
      if (checkEmailRegister.data['status'] == 0) {
        return S.current.email_used;
      } else {
        return null;
      }
    }
    return null;
  }
}
