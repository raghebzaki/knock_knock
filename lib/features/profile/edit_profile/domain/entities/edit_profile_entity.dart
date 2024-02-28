import 'package:equatable/equatable.dart';

import '../../../../../core/shared/models/user_data_model.dart';

class EditProfileEntity extends Equatable {
  final num? userId;
  final String? firstName;
  final String? lastName;
  final String? phone;
  final String? email;
  final int? status;
  final String? message;
  final UserData? userData;


  const EditProfileEntity(
      {
      this.userId,
      this.firstName,
      this.lastName,
      this.phone,
      this.email,
      this.status,
      this.message,
      this.userData,
      });

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
