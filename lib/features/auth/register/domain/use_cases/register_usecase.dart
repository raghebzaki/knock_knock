import 'package:dartz/dartz.dart';

import '../../../../../core/resources/api/failure_class.dart';
import '../entities/register_entity.dart';
import '../repositories/register_repo.dart';

class RegisterUseCase {
  final RegisterRepo registerRepo;

  RegisterUseCase({required this.registerRepo});

  Future<Either<Failure, RegisterEntity>> call(RegisterEntity registerEntity) async {
    return await registerRepo.userRegister(registerEntity);
  }
  // Future<Either<Failure, RegisterEntity>> call(String userName, String email,
  //     String phone, String pass, String confirmPass) async {
  //   return await registerRepo.userRegister(
  //       userName, email, phone, pass, confirmPass);
  // }
}
