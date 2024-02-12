part of 'edit_profile_cubit.dart';

@freezed
class EditProfileState with _$EditProfileState {
  const factory EditProfileState.initial() = _Initial;
  const factory EditProfileState.loading() = Loading;
  const factory EditProfileState.success(final EditProfileEntity? editProfileEntity) = Success;
  const factory EditProfileState.deleteSuccess(final EditProfileEntity? editProfileEntity) = DeleteSuccess;
  const factory EditProfileState.error(final String? errCode, final String? err) = Error;
}
