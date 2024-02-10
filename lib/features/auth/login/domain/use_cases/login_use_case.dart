import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/login_entity.dart';
import '../repositories/login_repo.dart';

class LoginUseCase {
  final LoginRepo loginRepo;

  LoginUseCase({
    required this.loginRepo,
  });

  Future<Either<Failure, LoginEntity>> call(LoginEntity loginEntity) async {
    return await loginRepo.userLogin(loginEntity);
  }
}
