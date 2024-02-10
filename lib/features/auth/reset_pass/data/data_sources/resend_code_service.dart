import 'package:dio/dio.dart';

import '../../../../../core/service/dio_factory.dart';
import '../../../../../core/utils/app_constants.dart';

abstract class ResendCodeService {
  Future resendOtp(String email);
}

class ResendCodeServiceImpl implements ResendCodeService {
  @override
  Future resendOtp(String email) async {
    Dio dio = await DioFactory.getDio();

    final sendOtp = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.resendCodeUri,
      data: {
        'email': email,
      },
    );

    if (sendOtp.statusCode == 200) {
      if (sendOtp.data['status'] == 1) {
        return "Code sent successfully to email inbox";
      }  
    }  
  }
}
