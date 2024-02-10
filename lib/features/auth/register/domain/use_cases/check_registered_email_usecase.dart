import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../repositories/register_repo.dart';

class CheckRegisteredEmailUseCase {
  final RegisterRepo registerRepo;

  CheckRegisteredEmailUseCase({required this.registerRepo});

  Future<Either<Failure, String?>> call(String email) async {
    return await registerRepo.checkRegisterEmail(email);
  }

}