part of 'forgot_pass_cubit.dart';

@freezed
class ForgotPassStates with _$ForgotPassStates {
  const factory ForgotPassStates.initial() = _Initial;
  const factory ForgotPassStates.loading() = Loading;
  const factory ForgotPassStates.success(final ForgetPassEntity forgetPassEntity) = Success;
  const factory ForgotPassStates.error(final String? errCode, final String err) = Error;
}
