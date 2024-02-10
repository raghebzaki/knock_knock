import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/features/auth/verify_account/domain/use_cases/resend_code_usecase.dart';

import '../../../../../core/helpers/cache_helper.dart';
import '../../domain/entities/login_entity.dart';
import '../../domain/use_cases/login_use_case.dart';

part 'login_state.dart';

part 'login_cubit.freezed.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit(
      {required this.loginUseCase, required this.verifyResendCodeUseCase})
      : super(const LoginStates.initial());

  static LoginCubit get(BuildContext context) => BlocProvider.of(context);

  final LoginUseCase loginUseCase;

  userLogin(LoginEntity loginEntity) async {
    emit(const LoginStates.loading());
    final login = await loginUseCase(loginEntity);

    login.fold(
      (l) {
        emit(
          LoginStates.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
      (r) async {
        emit(
          LoginStates.success(r),
        );
      },
    );
  }

  rememberMeService(BuildContext context) async {
    String email = await CacheHelper.getData("email");
    String pass = await CacheHelper.getData("pass");

    userLogin(
      LoginEntity(
        userName: email,
        pass: pass,
      ),
    );
  }

  final VerifyResendCodeUseCase verifyResendCodeUseCase;

  resendCode(String email) async {
    final resentOtp = await verifyResendCodeUseCase(email);

    resentOtp.fold(
      (l) => {
        emit(
          LoginStates.error(
            l.code.toString(),
            l.message,
          ),
        ),
      },
      (r) => {},
    );
  }

  TextEditingController emailCtrl = TextEditingController();
  TextEditingController passCtrl = TextEditingController();
}
