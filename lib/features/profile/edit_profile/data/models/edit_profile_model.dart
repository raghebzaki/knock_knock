import '../../../../../core/shared/models/user_data_model.dart';
import '../../domain/entities/edit_profile_entity.dart';

class EditProfileModel extends EditProfileEntity{
  const EditProfileModel({
    super.userId,
    super.firstName,
    super.lastName,
    super.phone,
    super.email,
    super.status,
    super.message,
    super.userData
  });


  factory EditProfileModel.fromJson(Map<String, dynamic> json) {
    return EditProfileModel(
      status: json["status"] ,
      message: json["message"] ,
      userData: json["user"]==null
          ?null
          : UserData.fromJson(json["user"]),
    );
  }

  static Map<String, dynamic> editAccountToJson(EditProfileEntity contactUsEntity) {
    return {
      'user_id': contactUsEntity.userId,
      'first_name': contactUsEntity.firstName,
      'last_name': contactUsEntity.lastName,
      'phone': contactUsEntity.phone,
      'email': contactUsEntity.email,
    };
  }

  static Map<String, dynamic> deleteAccountToJson(EditProfileEntity contactUsEntity) {
    return {
      'user_id': contactUsEntity.userId,
    };
  }
}