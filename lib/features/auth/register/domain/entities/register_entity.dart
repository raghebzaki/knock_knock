import 'package:equatable/equatable.dart';

class RegisterEntity extends Equatable {
  final num? status;
  final String? msg;
  final num? id;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? email;
  final String? pass;
  final String? confirmPass;

  const RegisterEntity({
    this.status,
    this.msg,
    this.id,
    this.firstName,
    this.lastName,
    this.phone,
    this.email,
    this.pass,
    this.confirmPass,
  });

  @override
  List<Object?> get props => [
        status,
        msg,
        id,
        firstName,
        phone,
        email,
        pass,
        confirmPass,
      ];
}
