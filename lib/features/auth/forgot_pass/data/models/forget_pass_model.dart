import '../../domain/entities/forget_pass_entity.dart';

class ForgetPassModel extends ForgetPassEntity {
  const ForgetPassModel({
    super.statusCode,
    super.msg,
    super.email,
    super.otp,
  });

  factory ForgetPassModel.fromJson(Map<String, dynamic> json) {
    return ForgetPassModel(
      statusCode: json['status'],
      msg: json['message'],
    );
  }

  static Map<String, dynamic> toJson(ForgetPassEntity forgetPassEntity) {
    return {
      'email': forgetPassEntity.email,
    };
  }
}
