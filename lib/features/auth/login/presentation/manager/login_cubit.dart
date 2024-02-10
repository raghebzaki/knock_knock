import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/auth/verify_account/domain/use_cases/resend_code_usecase.dart';

import 'package:rxdart/rxdart.dart';

import '../../../../../core/helpers/cache_helper.dart';
import '../../../../../generated/l10n.dart';
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

  var phoneCtrl = BehaviorSubject<String>();
  var passCtrl = BehaviorSubject<String>();

  Stream<String> get phoneStream => phoneCtrl.stream;
  Stream<String> get passStream => passCtrl.stream;

validatePhone(String phone) {
  if (phone.isEmpty) {
    phoneCtrl.sink.addError(S.current.plzEnterYourEmail);
  } else if (!phone.isPhone()) {
    phoneCtrl.sink.addError(S.current.plzEnterValidEmail);
  } else {
    phoneCtrl.sink.add(phone);
  }
}

validatePass(String pass) {
  if (pass.isEmpty) {
    passCtrl.sink.addError(S.current.passConfirmCantBeEmpty);
  } else if (pass.length < 8) {
    passCtrl.sink.addError(S.current.passwordsDoesNotMatch);
  } else {
    passCtrl.sink.add(pass);
  }
}

Stream<bool> get validBtnStream => Rx.combineLatest2(
  phoneStream,
  passStream,
      (a, b) => true,
);
}
