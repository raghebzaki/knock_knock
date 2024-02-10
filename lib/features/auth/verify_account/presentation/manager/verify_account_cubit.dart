import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/verify_account_entity.dart';
import '../../domain/use_cases/resend_code_usecase.dart';
import '../../domain/use_cases/verify_account_usecase.dart';

part 'verify_account_state.dart';

part 'verify_account_cubit.freezed.dart';

class VerifyAccountCubit extends Cubit<VerifyAccountStates> {
  VerifyAccountCubit({
    required this.verifyAccountUseCase,
    required this.resendCodeUseCase,
  }) : super(const VerifyAccountStates.initial());

  static VerifyAccountCubit get(context) => BlocProvider.of(context);

  final VerifyAccountUseCase verifyAccountUseCase;

  verifyUserAccount(VerifyAccountEntity verifyAccountEntity) async {
    emit(const VerifyAccountStates.loading());
    final verify = await verifyAccountUseCase(verifyAccountEntity);

    verify.fold((l) {
      emit(
        VerifyAccountStates.error(
          l.code.toString(),
          l.message,
        ),
      );
    }, (r) {
      emit(
        VerifyAccountStates.success(r),
      );
    });
  }

  final VerifyResendCodeUseCase resendCodeUseCase;

  resendCode(String email) async {
    emit(const VerifyAccountStates.loading());
    final resentOtp = await resendCodeUseCase(email);

    resentOtp.fold(
      (l) => {
        emit(
          VerifyAccountStates.error(
            l.code.toString(),
            l.message,
          ),
        ),
      },
      (r) => {
        emit(
          VerifyAccountStates.resendCode(r),
        ),
      },
    );
  }
}
