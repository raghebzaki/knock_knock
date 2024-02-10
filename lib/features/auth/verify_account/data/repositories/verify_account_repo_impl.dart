import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/verify_account_entity.dart';
import '../../domain/repositories/verify_account_repo.dart';
import '../data_sources/resend_code_service.dart';
import '../data_sources/verify_account_service.dart';

class VerifyAccountRepoImpl implements VerifyAccountRepo {
  final VerifyAccountService verifyAccountService;
  final VerifyResendCodeService resendCodeService;

  VerifyAccountRepoImpl(this.verifyAccountService, this.resendCodeService);

  @override
  Future<Either<Failure, VerifyAccountEntity>> verifyAccount(
      VerifyAccountEntity verifyAccountEntity) async {
    final result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final verifyAccount =
            await verifyAccountService.userVerifyAccount(verifyAccountEntity);
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
