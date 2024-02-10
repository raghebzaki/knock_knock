import 'package:equatable/equatable.dart';

class ChangePassEntity extends Equatable {
  final int? status;
  final String? message;
  final String? email;
  final String? pass;
  final String? confirmPass;

  const ChangePassEntity({
    this.status,
    this.message,
    this.email,
    this.pass,
    this.confirmPass,
  });

  @override
  List<Object?> get props => [
    status,
    message,
    email,
    pass,
    confirmPass,
  ];
}
