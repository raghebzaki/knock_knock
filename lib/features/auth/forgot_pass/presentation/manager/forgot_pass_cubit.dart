import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../generated/l10n.dart';
import '../../domain/entities/forget_pass_entity.dart';
import '../../domain/use_cases/forget_pass_usecase.dart';

part 'forgot_pass_state.dart';

part 'forgot_pass_cubit.freezed.dart';

class ForgotPassCubit extends Cubit<ForgotPassStates> {
  ForgotPassCubit({required this.forgotPassUseCase})
      : super(const ForgotPassStates.initial());

  static ForgotPassCubit get(BuildContext context) => BlocProvider.of(context);

  final ForgotPassUseCase forgotPassUseCase;

  userForgotPass(ForgetPassEntity forgetPassEntity) async {
    emit(const ForgotPassStates.loading());
    final forgotPass = await forgotPassUseCase(forgetPassEntity);

    forgotPass.fold(
      (l) {
        emit(
          ForgotPassStates.error(
            l.code.toString(),
            l.message,
          ),
        );
      },
      (r) => {
        emit(
          ForgotPassStates.success(r),
        )
      },
    );
  }

  var phoneCtrl = BehaviorSubject<String>();

  Stream<String> get phoneStream => phoneCtrl.stream;

  validatePhone(String phone) {
    if (phone.isEmpty) {
      phoneCtrl.sink.addError(S.current.pleaseEnterAValidPhoneNumber);
    } else if (!phone.isPhone()) {
      phoneCtrl.sink.addError(S.current.wrongPhoneCheckAgain);
    } else {
      phoneCtrl.sink.add(phone);
    }
  }

  Stream<bool> get validateForgotPassBtn => Rx.combineLatest(
        [
          phoneStream
        ],
        (values) => true,
      );
}
