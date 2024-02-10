import 'package:equatable/equatable.dart';

class VerifyAccountEntity extends Equatable {
  final int? status;
  final String? msg;
  final String? email;
  final String? otp;

  const VerifyAccountEntity({
    this.status,
    this.msg,
    this.email,
    this.otp,
  });

  @override
  List<Object?> get props => [
    status,
    msg,
    email,
    otp,
  ];
}
