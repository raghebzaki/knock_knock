import 'package:equatable/equatable.dart';

class EditProfileEntity extends Equatable {
  final num? userId;
  final String? name;
  final String? email;
  final int? status;
  final String? message;

  const EditProfileEntity(
      {
      this.userId,
      this.name,
      this.email,
      this.status,
      this.message});

  @override
  List<Object?> get props => [
        userId,
        name,
        email,
        status,
        message,
      ];
}
