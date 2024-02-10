import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../repositories/reset_pass_repo.dart';

class ResendCodeUseCase {
  final ResetPassRepo resetPassRepo;

  ResendCodeUseCase({required this.resetPassRepo});

  Future<Either<Failure, dynamic>> call(String email) async {
    return await resetPassRepo.resendCode(email);
  }
}