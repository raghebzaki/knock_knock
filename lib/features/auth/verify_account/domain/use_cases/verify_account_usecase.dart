import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/verify_account_entity.dart';
import '../repositories/verify_account_repo.dart';

class VerifyAccountUseCase {
  final VerifyAccountRepo verifyAccountRepo;

  VerifyAccountUseCase(this.verifyAccountRepo);

  Future<Either<Failure, VerifyAccountEntity>> call(VerifyAccountEntity verifyAccountEntity) async {
    return await verifyAccountRepo.verifyAccount(verifyAccountEntity);
  }
}