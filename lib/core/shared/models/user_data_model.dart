import 'package:equatable/equatable.dart';

import '../../utils/app_constants.dart';

class UserData extends Equatable {
  static num? id;
  static String? name;
  static String? avatar;
  static String? email;
  static String? pass;
  static String? passConfirm;
  static String? phone;
  static String? address;
  static String? type;
  static num? otp;
  static num? status;

  UserData.fromJson(Map<String, dynamic> json) {
    id = json["id"] ?? AppConstants.unknownNumValue; // 2077
    name = json["name"] ?? AppConstants.unknownStringValue; // UNKNOWN STRING VALUE
    avatar = json["avatar"] ?? AppConstants.unknownStringValue;
    email = json["email"] ?? AppConstants.unknownStringValue;
    pass = json["password"] ?? AppConstants.unknownStringValue;
    passConfirm = json["password_confirmation"] ?? AppConstants.unknownStringValue;
    phone = json["phone"] ?? AppConstants.unknownStringValue;
    type = json["type"] ?? AppConstants.unknownStringValue;
    status = json['status'] ?? AppConstants.unknownNumValue;
  }

  static Map<String, dynamic> toJson() => {
        "name": name,
        "email": email,
        "password": pass,
        "password_confirmation": passConfirm,
      };

  @override
  List<Object?> get props => [
        name,
        avatar,
        email,
        pass,
        passConfirm,
        phone,
        address,
        otp,
        status,
      ];
}
