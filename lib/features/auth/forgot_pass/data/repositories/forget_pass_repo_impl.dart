import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';


import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/forget_pass_entity.dart';
import '../../domain/repositories/forget_pass_repo.dart';
import '../data_sources/forgot_pass_service.dart';

class ForgotPassRepoImpl implements ForgotPassRepo {
  final ForgotPassService forgotPassService;

  ForgotPassRepoImpl({required this.forgotPassService});

  @override
  Future<Either<Failure, ForgetPassEntity>> userForgotPass(
      ForgetPassEntity forgetPassEntity) async {
    final result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final forgotPass = await forgotPassService.forgotPass(forgetPassEntity);
        return Right(forgotPass);
      } on DioException catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}
