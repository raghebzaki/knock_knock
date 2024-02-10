import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/forget_pass_entity.dart';

abstract class ForgotPassRepo {
  Future<Either<Failure, ForgetPassEntity>> userForgotPass(ForgetPassEntity forgetPassEntity);
}