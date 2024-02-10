part of 'change_pass_cubit.dart';

@freezed
class ChangePassStates with _$ChangePassStates {
  const factory ChangePassStates.initial() = _Initial;
  const factory ChangePassStates.loading() = Loading;
  const factory ChangePassStates.success(final ChangePassEntity changePassEntity) = Success;
  const factory ChangePassStates.error(final String errCode, final String err) = Error;
}
