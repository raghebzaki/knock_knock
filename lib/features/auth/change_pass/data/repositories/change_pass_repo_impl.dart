import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/data_sources.dart';
import '../../../../../core/resources/api/error_handler.dart';
import '../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/change_pass_entity.dart';
import '../../domain/repositories/change_pass_repo.dart';
import '../data_sources/change_pass_service.dart';

class ChangePassRepoImpl implements ChangePassRepo {
  final ChangePassService changePassService;

  ChangePassRepoImpl(this.changePassService);

  @override
  Future<Either<Failure, ChangePassEntity>> changePass(
      ChangePassEntity changePassEntity) async {
    final result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final changePass =
            await changePassService.userChangePass(changePassEntity);
        return right(changePass);
      } catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}
