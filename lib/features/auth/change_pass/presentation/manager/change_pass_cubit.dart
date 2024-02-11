import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/features/auth/change_pass/domain/entities/change_pass_entity.dart';
import 'package:rxdart/rxdart.dart';

import '../../../../../generated/l10n.dart';
import '../../domain/use_cases/change_pass_usecase.dart';

part 'change_pass_state.dart';

part 'change_pass_cubit.freezed.dart';

class ChangePassCubit extends Cubit<ChangePassStates> {
  ChangePassCubit({required this.changePassUseCase})
      : super(const ChangePassStates.initial());

  static ChangePassCubit get(context) => BlocProvider.of(context);

  final ChangePassUseCase changePassUseCase;

  userChangePass(ChangePassEntity changePassEntity) async {
    emit(const ChangePassStates.loading());

    final changePass = await changePassUseCase(changePassEntity);

    changePass.fold(
      (l) => {
        emit(
          ChangePassStates.error(
            l.code.toString(),
            l.message,
          ),
        ),
      },
      (r) => {
        emit(
          ChangePassStates.success(r),
        ),
      },
    );
  }

  var passCtrl = BehaviorSubject<String>();
  var passConfirmCtrl = BehaviorSubject<String>();

  Stream<String> get passStream => passCtrl.stream;

  Stream<String> get passConfirmStream => passConfirmCtrl.stream;

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

  Stream<bool> get validateChangePassBtnStream => Rx.combineLatest(
        [
          passStream,
          passConfirmStream,
        ],
        (values) => true,
      );
}
