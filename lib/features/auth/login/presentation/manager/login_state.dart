part of 'login_cubit.dart';

@freezed
class LoginStates with _$LoginStates {
  const factory LoginStates.initial() = _Initial;
  const factory LoginStates.loading() = Loading;
  const factory LoginStates.success(final LoginEntity? loginCredentials) = Success;
  const factory LoginStates.error(final String? errCode, final String? err) = Error;
}
