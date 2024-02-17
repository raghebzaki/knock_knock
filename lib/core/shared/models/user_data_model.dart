import 'package:equatable/equatable.dart';

class UserData extends Equatable {
  static num? id;
  static String? firstName;
  static String? lastName;
  static String? avatar;
  static String? email;
  static String? pass;
  static String? passConfirm;
  static String? phone;
  static num? otp;
  static num? status;

  UserData.fromJson(Map<String, dynamic> json) {
    id = json["id"] ; // 2077
    firstName = json["first_name"] ; // UNKNOWN STRING VALUE
    lastName = json["last_name"] ; // UNKNOWN STRING VALUE
    avatar = json["avatar"] ;
    email = json["email"] ;
    phone = json["phone"] ;
  }

  static Map<String, dynamic> toJson() => {
        "email": email,
        "password": pass,
        "password_confirmation": passConfirm,
      };

  @override
  List<Object?> get props => [
        id,
        firstName,
        lastName,
        avatar,
        email,
        phone,

      ];
}
