import '../../domain/entities/verify_account_entity.dart';

class VerifyAccountModel extends VerifyAccountEntity {
  const VerifyAccountModel({
    super.status,
    super.msg,
    super.email,
    super.otp,
  });

  factory VerifyAccountModel.fromJson(Map<String, dynamic> json) {
    return VerifyAccountModel(
      status: json['status'],
      msg: json['message'],
    );
  }

  static Map<String, dynamic> toJson(VerifyAccountEntity verifyAccountEntity) {
    return {
      'email': verifyAccountEntity.email,
      'code': verifyAccountEntity.otp,
    };
  }
}
