import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/features/auth/change_pass/domain/entities/change_pass_entity.dart';

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

  TextEditingController passCtrl = TextEditingController();
  TextEditingController passConfirmCtrl = TextEditingController();
}
