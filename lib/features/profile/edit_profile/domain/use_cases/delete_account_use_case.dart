import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/edit_profile_entity.dart';
import '../repositories/edit_profile_repo.dart';


class DeleteAccountUseCase {
  final EditProfileRepo editProfileRepo;

  DeleteAccountUseCase(this.editProfileRepo);

  Future<Either<Failure,EditProfileEntity>> call(EditProfileEntity editProfileEntity) async {
    return await editProfileRepo.deleteProfile(editProfileEntity);
  }
}
