
import 'package:dio/dio.dart';

import '../../../../../core/service/dio_factory.dart';
import '../../../../../core/utils/app_constants.dart';
import '../../domain/entities/login_entity.dart';
import '../models/login_model.dart';

abstract class LoginService {
  Future<LoginModel> login(LoginEntity loginEntity);
}

class LoginServiceImpl implements LoginService {
  @override
  Future<LoginModel> login(LoginEntity loginEntity) async {
    Dio dio = await DioFactory.getDio();
    LoginModel loginModel = const LoginModel();

    // (dio.httpClientAdapter as IOHttpClientAdapter).createHttpClient = () {
    //   HttpClient dioClient = HttpClient();
    //   dioClient.badCertificateCallback =
    //   ((X509Certificate cert, String host, int port) => true);
    //   return dioClient;
    // };
    final loginUser = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.loginUri,
      data: LoginModel.toJson(loginEntity),

    );

    if (loginUser.statusCode == 200) {
      loginModel = LoginModel.fromJson(loginUser.data);
    }

    return loginModel;
  }
}
