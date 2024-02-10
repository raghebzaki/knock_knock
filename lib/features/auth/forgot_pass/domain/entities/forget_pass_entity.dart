import 'package:equatable/equatable.dart';

class ForgetPassEntity extends Equatable {
  final num? statusCode;
  final String? msg;
  final String? email;
  final String? otp;

  const ForgetPassEntity({
    this.statusCode,
    this.msg,
    this.email,
    this.otp,
  });

  @override
  List<Object?> get props => [
    statusCode,
    msg,
    email,
    otp,
  ];
}
