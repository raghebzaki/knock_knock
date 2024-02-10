import 'package:equatable/equatable.dart';

import '../../../../../core/shared/models/user_data_model.dart';

class LoginEntity extends Equatable {

  final num? status;
  final String? msg;
  final String? userName;
  final String? pass;
  final UserData? userData;

  const LoginEntity( {
    this.userName,
    this.pass,
    this.status,
    this.msg,
    this.userData,
  });

  @override
  List<Object?> get props => [
        status,
        msg,
        userData,
      ];
}
