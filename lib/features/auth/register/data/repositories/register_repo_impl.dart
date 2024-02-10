import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/register_entity.dart';
import '../../domain/repositories/register_repo.dart';
import '../data_sources/lcheck_registered_email_service.dart';
import '../data_sources/register_service.dart';

class RegisterRepoImpl implements RegisterRepo {
  final RegisterService registerService;
  final CheckRegisteredEmailService checkRegisteredEmailService;

  RegisterRepoImpl(
      {required this.registerService,
      required this.checkRegisteredEmailService});

  @override
  Future<Either<Failure, RegisterEntity>> userRegister(
      RegisterEntity registerEntity
  ) async {
    final result = await (Connectivity().checkConnectivity());

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final register = await registerService.userRegister(registerEntity);
        return right(register);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }

  @override
  Future<Either<Failure, String?>> checkRegisterEmail(String email) async {
    final result = await (Connectivity().checkConnectivity());

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final checkEmail = await checkRegisteredEmailService.checkEmail(email);
        return right(checkEmail);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}
