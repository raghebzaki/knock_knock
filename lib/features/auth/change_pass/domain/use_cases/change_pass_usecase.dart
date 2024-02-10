import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/change_pass_entity.dart';
import '../repositories/change_pass_repo.dart';

class ChangePassUseCase {
  final ChangePassRepo changePassRepo;

  ChangePassUseCase(this.changePassRepo);

  Future<Either<Failure, ChangePassEntity>> call(ChangePassEntity changePassEntity) async {
    return await changePassRepo.changePass(changePassEntity);
  }
}