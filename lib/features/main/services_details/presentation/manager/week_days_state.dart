part of 'week_days_cubit.dart';

@freezed
class WeekDaysStates with _$WeekDaysStates {
  const factory WeekDaysStates.initial() = _Initial;
  const factory WeekDaysStates.loading() = Loading;
  const factory WeekDaysStates.success(final List<WeekDaysEntity> weekDays) = Success;
  const factory WeekDaysStates.error(final String errCode, final String err) = Error;
}
