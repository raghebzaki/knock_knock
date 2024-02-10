import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../core/shared/arguments.dart';
import '../../../../../generated/l10n.dart';
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
              email: emailCtrl.text,
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

  Future<String> checkEmail(String email) async {
    emit(const RegisterState.loading());
    final checkEmail = await checkRegisteredEmailUseCase(email);
    var res;

    checkEmail.fold(
      (l) => {
        emit(
          RegisterState.error(
            l.code.toString(),
            l.message,
          ),
        ),
      },
      (r) => {
        emit(
          RegisterState.checkEmailSuccess(r!),
        ),
        res = r
      },
    );
    return res;
  }

  var emailResponse;
  String? emailValid;

  validateEmail(String email) async {
    if (email.isEmpty) {
      emailResponse = S.current.plz_enter_email;
    } else if (!email.isEmail()) {
      emailResponse = S.current.enter_valid_email;
    } else {
      emailResponse = await checkEmail(email);
    }
    emailValid = emailResponse;
    emit(const RegisterState.validEmail());
  }

  TextEditingController emailCtrl = TextEditingController();
  TextEditingController userNameCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
  TextEditingController passConfirmCtrl = TextEditingController();
}
