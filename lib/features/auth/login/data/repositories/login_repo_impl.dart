import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/repositories/login_repo.dart';
import '../data_sources/login_service.dart';

class LoginRepoImpl implements LoginRepo {
  final LoginService loginService;

  LoginRepoImpl({required this.loginService});

  @override
  Future<Either<Failure, LoginEntity>> userLogin(
      LoginEntity loginEntity) async {
    final result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final loginCredentials = await loginService.login( loginEntity);
        return right(loginCredentials);
      } on DioException catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}
