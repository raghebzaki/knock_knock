import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/edit_profile_entity.dart';


abstract class EditProfileRepo {
  Future<Either<Failure,EditProfileEntity>> deleteProfile(EditProfileEntity editProfileEntity);
  Future<Either<Failure,EditProfileEntity>> editProfile(EditProfileEntity editProfileEntity);

}
