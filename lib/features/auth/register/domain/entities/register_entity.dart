import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  final num? status;
  final String? msg;
  final num? id;
  final String? userName;
  final String? phone;
  final String? email;
  final String? pass;
  final String? confirmPass;
  final String? type;

  const RegisterEntity({
    this.status,
    this.msg,
    this.id,
    this.userName,
    this.phone,
    this.email,
    this.pass,
    this.confirmPass,
    this.type,
  });

  @override
  List<Object?> get props => [
        status,
        msg,
        id,
        userName,
        phone,
        email,
        pass,
        confirmPass,
        type
      ];
}
