import 'package:dio/dio.dart';
import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/edit_profile_entity.dart';
import '../models/edit_profile_model.dart';

abstract class EditProfileService {
  Future<EditProfileModel> editAccount(EditProfileEntity editProfileEntity);
  Future<EditProfileModel> deleteAccount(EditProfileEntity editProfileEntity);
}

class EditProfileServiceImpl implements EditProfileService {

  @override
  Future<EditProfileModel> editAccount(EditProfileEntity editProfileEntity) async {

    Dio dio = await DioFactory.getDio();
    EditProfileModel editProfileModel = const EditProfileModel();

    final edit = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.editUserProfileUri,
      data: EditProfileModel.editAccountToJson(editProfileEntity),
    );

    if (edit.statusCode == 200) {
      editProfileModel=EditProfileModel.fromJson(edit.data);
    }

    return editProfileModel;
  }

  @override
  Future<EditProfileModel> deleteAccount(EditProfileEntity editProfileEntity) async {
    Dio dio = await DioFactory.getDio();
    EditProfileModel editProfileModel = const EditProfileModel();

    final delete = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.deleteProfileUri,
      data: EditProfileModel.editAccountToJson(editProfileEntity),
    );

    if (delete.statusCode == 200) {
      editProfileModel = EditProfileModel.fromJson(delete.data);
    }

    return editProfileModel;
  }

}
