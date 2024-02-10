import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/reset_entity.dart';

abstract class ResetPassRepo {
  Future<Either<Failure, ResetPassEntity>> verifyAccount(ResetPassEntity resetPassEntity);
  Future<Either<Failure, dynamic>> resendCode(String email);
}