import '../../domain/entities/edit_profile_entity.dart';

class EditProfileModel extends EditProfileEntity{
  const EditProfileModel({
    super.userId,
    super.name,
    super.email,
    super.status,
    super.message,
  });


  factory EditProfileModel.fromJson(Map<String, dynamic> json) {
    return EditProfileModel(
      status: json["status"] ,
      message: json["message"] ,
    );
  }

  static Map<String, dynamic> editAccountToJson(EditProfileEntity contactUsEntity) {
    return {
      'user_id': contactUsEntity.userId,
      'name': contactUsEntity.name,
      'email': contactUsEntity.email,
    };
  }

  static Map<String, dynamic> deleteAccountToJson(EditProfileEntity contactUsEntity) {
    return {
      'user_id': contactUsEntity.userId,
    };
  }
}