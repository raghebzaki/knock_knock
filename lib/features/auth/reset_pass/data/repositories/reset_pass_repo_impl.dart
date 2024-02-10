import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/reset_entity.dart';
import '../../domain/repositories/reset_pass_repo.dart';
import '../data_sources/resend_code_service.dart';
import '../data_sources/reset_pass_service.dart';

class ResetPassRepoImpl implements ResetPassRepo {
  final ResetPassService resetPassService;
  final ResendCodeService resendCodeService;

  ResetPassRepoImpl({
    required this.resetPassService,
    required this.resendCodeService,
  });

  @override
  Future<Either<Failure, ResetPassEntity>> verifyAccount(
      ResetPassEntity resetPassEntity) async {
    final result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final verifyAccount =
            await resetPassService.userVerifyAccount(resetPassEntity);
        return right(verifyAccount);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }

  @override
  Future<Either<Failure, dynamic>> resendCode(String email) async {
    final result = await (Connectivity().checkConnectivity());

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final resendCode = await resendCodeService.resendOtp(email);
        return right(resendCode);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}
