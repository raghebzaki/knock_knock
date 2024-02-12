import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/edit_profile_entity.dart';
import '../../domain/repositories/edit_profile_repo.dart';
import '../data_sources/edit_profile_service.dart';


class EditProfileRepoImpl implements EditProfileRepo {
  final EditProfileService editProfileService;

  EditProfileRepoImpl(this.editProfileService);


  @override
  Future<Either<Failure, EditProfileEntity>> deleteProfile(EditProfileEntity editProfileEntity) async {
    final result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final delete = await editProfileService.deleteAccount(editProfileEntity);
        return right(delete);
      } on DioException catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }

  @override
  Future<Either<Failure, EditProfileEntity>> editProfile(EditProfileEntity editProfileEntity) async {
    final result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final edit = await editProfileService.editAccount(editProfileEntity);
        return right(edit);
      } on DioException catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}