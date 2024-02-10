part of 'register_cubit.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial() = _Initial;
  const factory RegisterState.loading() = Loading;
  const factory RegisterState.success(final RegisterEntity? registerEntity) = Success;
  const factory RegisterState.checkEmailSuccess(final String status) = CheckEmailSuccess;
  const factory RegisterState.error(final String errCode, final String err) = Error;
  const factory RegisterState.validEmail() = ValidEmail;
}
