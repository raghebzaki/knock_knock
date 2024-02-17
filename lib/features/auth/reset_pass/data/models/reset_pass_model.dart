import '../../domain/entities/reset_entity.dart';

class ResetPassModel extends ResetPassEntity {
  const ResetPassModel({
    super.status,
    super.msg,
    super.email,
    super.otp,
  });

  factory ResetPassModel.fromJson(Map<String, dynamic> json) {
    return ResetPassModel(
      status: json['status'],
      msg: json['message'],
    );
  }

  static Map<String, dynamic> toJson(ResetPassEntity resetPassModel) {
    return {
      'email': resetPassModel.email,
      'otp': resetPassModel.otp,
    };
  }
}
