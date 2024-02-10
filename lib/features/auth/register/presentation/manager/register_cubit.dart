import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../core/shared/arguments.dart';
import '../../domain/entities/register_entity.dart';
import '../../domain/use_cases/check_registered_email_usecase.dart';
import '../../domain/use_cases/register_usecase.dart';

part 'register_state.dart';

part 'register_cubit.freezed.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(
      {required this.registerUseCase,
      required this.checkRegisteredEmailUseCase})
      : super(const RegisterState.initial());

  static RegisterCubit get(context) => BlocProvider.of(context);

  final RegisterUseCase registerUseCase;
  final CheckRegisteredEmailUseCase checkRegisteredEmailUseCase;

  userRegister(RegisterEntity registerEntity, BuildContext context) async {
    emit(const RegisterState.loading());
    final register = await registerUseCase(registerEntity);

    register.fold(
      (l) {
        emit(
          RegisterState.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
      (r) {
        if (r.status == 1) {
          context.pushNamed(
            verifyAccountPageRoute,
            arguments: VerifyAccountArgs(
              email: firstNameCtrl.text,
            ),
          );
          context.defaultSnackBar("Registered Successfully");
        }
        emit(
          RegisterState.success(registerEntity),
        );
      },
    );
  }





  TextEditingController firstNameCtrl = TextEditingController();
  TextEditingController lastNameCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  TextEditingController passConfirmCtrl = TextEditingController();
}
