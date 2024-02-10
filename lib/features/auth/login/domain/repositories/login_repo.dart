
import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/login_entity.dart';

abstract class LoginRepo {
  Future<Either<Failure, LoginEntity>> userLogin(LoginEntity loginEntity);
}