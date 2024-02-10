import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/features/auth/reset_pass/domain/use_cases/reset_pass_usecase.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../generated/l10n.dart';
import '../../domain/entities/reset_entity.dart';
import '../../domain/use_cases/resend_code_usecase.dart';

part 'reset_pass_state.dart';

part 'reset_pass_cubit.freezed.dart';

class ResetPassCubit extends Cubit<ResetPassStates> {
  ResetPassCubit({
    required this.resetPassUseCase,
    required this.resendCodeUseCase,
  }) : super(const ResetPassStates.initial());

  static ResetPassCubit get(context) => BlocProvider.of(context);

  final ResetPassUseCase resetPassUseCase;

  verifyUserAccount(ResetPassEntity resetPassEntity) async {
    emit(const ResetPassStates.loading());
    final verify = await resetPassUseCase(resetPassEntity);

    verify.fold((l) {
      emit(
        ResetPassStates.error(
          l.code.toString(),
          l.message,
        ),
      );
    }, (r) {
      emit(
        ResetPassStates.success(r),
      );
    });
  }

  final ResendCodeUseCase resendCodeUseCase;

  resendCode(String email) async {
    emit(const ResetPassStates.loading());
    final resentOtp = await resendCodeUseCase(email);

    resentOtp.fold(
      (l) => {
        emit(
          ResetPassStates.error(
            l.code.toString(),
            l.message,
          ),
        ),
      },
      (r) => {
        emit(
          ResetPassStates.resendCode(r),
        ),
      },
    );
  }

  var pinCtrl = BehaviorSubject<String>();


  Stream<String> get pinStream => pinCtrl.stream;

  validateCode(String code) {
    if (code.isEmpty) {
      pinCtrl.sink.addError(S.current.verificationCodeCantEmpty);
    } else {
      pinCtrl.sink.add(code);
    }
  }

  Stream<bool> get validatePinBtnStream => Rx.combineLatest(
    [
      pinStream,
    ],
        (values) => true,
  );

}
