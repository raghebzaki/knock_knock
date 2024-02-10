import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/reset_entity.dart';
import '../repositories/reset_pass_repo.dart';

class ResetPassUseCase {
  final ResetPassRepo resetPassRepo;

  ResetPassUseCase({required this.resetPassRepo});

  Future<Either<Failure, ResetPassEntity>> call(ResetPassEntity resetPassEntity) async {
    return await resetPassRepo.verifyAccount(resetPassEntity);
  }
}