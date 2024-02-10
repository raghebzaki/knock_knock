import 'package:equatable/equatable.dart';

class ResetPassEntity extends Equatable {
  final String? status;
  final String? msg;
  final String? email;
  final int? otp;

  const ResetPassEntity({
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
