part of 'verify_account_cubit.dart';

@freezed
class ResetPassStates with _$ResetPassStates {
  const factory ResetPassStates.initial() = _Initial;
  const factory ResetPassStates.loading() = Loading;
  const factory ResetPassStates.success(final ResetPassEntity resetPassEntity) = Success;
  const factory ResetPassStates.error(final String errCode, final String err) = Error;
  const factory ResetPassStates.resendCode(final String email) = ResendCode;
}
