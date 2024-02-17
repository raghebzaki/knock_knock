import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/utils/extensions.dart';

import 'package:rxdart/rxdart.dart';

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
              email: emailCtrl.value,
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

  var firstNameCtrl = BehaviorSubject<String>();
  var lastNameCtrl = BehaviorSubject<String>();
  var phoneCtrl = BehaviorSubject<String>();
  var emailCtrl = BehaviorSubject<String>();
  var passCtrl = BehaviorSubject<String>();
  var passConfirmCtrl = BehaviorSubject<String>();

  Stream<String> get firstNameSteam => firstNameCtrl.stream;

  Stream<String> get lastNameStream => lastNameCtrl.stream;

  Stream<String> get phoneStream => phoneCtrl.stream;
  Stream<String> get emailStream => emailCtrl.stream;

  Stream<String> get passStream => passCtrl.stream;

  Stream<String> get passConfirmStream => passConfirmCtrl.stream;

  validateFirstName(String firstName) async {
    if (firstName.isEmpty) {
      firstNameCtrl.sink.addError(S.current.firstNameCantBeEmpty);
    } else {
      firstNameCtrl.sink.add(firstName);
    }
  }

  validateLastName(String lastName) async {
    if (lastName.isEmpty) {
      lastNameCtrl.sink.addError(S.current.lastNameCantBeEmpty);
    } else {
      lastNameCtrl.sink.add(lastName);
    }
  }

  validatePhone(String phone) async {
    if (phone.isEmpty) {
      phoneCtrl.sink.addError(S.current.pleaseEnterAValidPhoneNumber);
    } else if (!phone.isPhone()) {
      phoneCtrl.sink.addError(S.current.pleaseEnterAValidPhoneNumber);
    } else {
      phoneCtrl.sink.add(phone);
    }
  }
  validateEmail(String email) async {
    if (email.isEmpty) {
      emailCtrl.sink.addError(S.current.plzEnterYourEmail);
    } else if (!email.isEmail()) {
      emailCtrl.sink.addError(S.current.plzEnterValidEmail);
    } else {
      emailCtrl.sink.add(email);
    }
  }

  validatePass(String pass) async {
    if (pass.isEmpty) {
      passCtrl.sink.addError(S.current.passwordCaNotBeEmpty);
    } else if (pass.length < 8) {
      passCtrl.sink.addError(S.current.passwordTooShort);
    } else {
      passCtrl.sink.add(pass);
    }
  }

  validatePassConfirm(String passConfirm) async {
    if (passConfirm.isEmpty) {
      passConfirmCtrl.sink.addError(S.current.passConfirmCantBeEmpty);
    } else if (passConfirm != passCtrl.value) {
      passConfirmCtrl.sink.addError(S.current.passwordsDoesNotMatch);
    } else {
      passConfirmCtrl.sink.add(passConfirm);
    }
  }

  Stream<bool> get registerBtnValidStream => Rx.combineLatest5(
        firstNameSteam,
        lastNameStream,
        phoneStream,
        passStream,
        passConfirmStream,
        (a, b, c, d, e) => true,
      );
}
