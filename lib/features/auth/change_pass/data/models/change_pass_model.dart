import '../../domain/entities/change_pass_entity.dart';

class ChangePassModel extends ChangePassEntity {
  const ChangePassModel({
    super.status,
    super.message,
    super.email,
    super.pass,
    super.confirmPass,
  });

  factory ChangePassModel.fromJson(Map<String, dynamic> json) {
    return ChangePassModel(
      status: json['status'],
      message: json['message'],
    );
  }

  static Map<String, dynamic> toJson(ChangePassEntity changePassEntity) {
    return {
      'email': changePassEntity.email,
      'password': changePassEntity.pass,
      'password_confirmation': changePassEntity.confirmPass,
    };
  }
}
