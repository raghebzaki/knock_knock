part of 'verify_account_cubit.dart';

@freezed
class VerifyAccountStates with _$VerifyAccountStates {
  const factory VerifyAccountStates.initial() = _Initial;
  const factory VerifyAccountStates.loading() = Loading;
  const factory VerifyAccountStates.success(final VerifyAccountEntity verifyAccountEntity) = Success;
  const factory VerifyAccountStates.error(final String errCode, final String err) = Error;
  const factory VerifyAccountStates.resendCode(final String email) = ResendCode;
}
