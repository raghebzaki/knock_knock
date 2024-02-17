import 'package:equatable/equatable.dart';

class EditProfileEntity extends Equatable {
  final num? userId;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final int? status;
  final String? message;

  const EditProfileEntity(
      {
      this.userId,
      this.firstName,
      this.lastName,
      this.phone,
      this.status,
      this.message});

  @override
  List<Object?> get props => [
        userId,
        firstName,
        lastName,
    phone,
        status,
        message,
      ];
}
