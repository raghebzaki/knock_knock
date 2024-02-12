import '../../domain/entities/contact_us_entity.dart';

class ContactUsModel extends ContactUsEntity{
  const ContactUsModel({
    super.id,
    super.status,
    super.userId,
    super.message,

  });


  factory ContactUsModel.fromJson(Map<String, dynamic> json) {
    return ContactUsModel(
      status: json["status"] ,
      message: json["message"] ,
    );
  }

  static Map<String, dynamic> toJson(ContactUsEntity contactUsEntity) {
    return {
      'message': contactUsEntity.message,
    };
  }
}