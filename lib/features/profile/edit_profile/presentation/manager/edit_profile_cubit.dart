import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../domain/entities/edit_profile_entity.dart';
import '../../domain/use_cases/delete_account_use_case.dart';
import '../../domain/use_cases/edit_account_use_case.dart';

part 'edit_profile_state.dart';
part 'edit_profile_cubit.freezed.dart';

class EditProfileCubit extends Cubit<EditProfileState> {
  EditProfileCubit({required this.deleteAccountUseCase, required this.editProfileUseCase,}) : super(const EditProfileState.initial());

  final DeleteAccountUseCase deleteAccountUseCase;
  final EditProfileUseCase editProfileUseCase;

  static EditProfileCubit get(context) => BlocProvider.of(context);

  deleteAccount(EditProfileEntity editProfileEntity) async {

    emit(const EditProfileState.loading());

    final send = await deleteAccountUseCase(editProfileEntity);

    send.fold(
          (l) => {
        emit(
          EditProfileState.error(
            l.code.toString(),
            l.message,
          ),
        ),
      },
          (r) => {
        emit(
          EditProfileState.deleteSuccess(r),
        ),
      },
    );
  }

  editProfile(EditProfileEntity editProfileEntity) async {
    emit(const EditProfileState.loading());

    final send = await editProfileUseCase(editProfileEntity);

    send.fold(
          (l) => {
        emit(
          EditProfileState.error(
            l.code.toString(),
            l.message,
          ),
        ),
      },
          (r) => {
        emit(
          EditProfileState.success(r),
        ),
      },
    );
  }

}
