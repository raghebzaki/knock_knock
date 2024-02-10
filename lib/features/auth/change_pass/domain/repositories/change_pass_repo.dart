import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/change_pass_entity.dart';

abstract class ChangePassRepo {
  Future<Either<Failure, ChangePassEntity>> changePass(
      ChangePassEntity changePassEntity);
}
