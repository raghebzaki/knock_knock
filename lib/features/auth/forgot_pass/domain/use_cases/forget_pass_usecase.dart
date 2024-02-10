import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/forget_pass_entity.dart';
import '../repositories/forget_pass_repo.dart';

class ForgotPassUseCase {
  final ForgotPassRepo forgotPassRepo;

  ForgotPassUseCase({required this.forgotPassRepo});
  Future<Either<Failure, ForgetPassEntity>> call(ForgetPassEntity forgetPassEntity) async {
    return await forgotPassRepo.userForgotPass(forgetPassEntity);
  }
}