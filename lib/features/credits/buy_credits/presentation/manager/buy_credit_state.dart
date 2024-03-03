part of 'buy_credit_cubit.dart';

@freezed
class BuyCreditState with _$BuyCreditState {
  const factory BuyCreditState.initial() = _Initial;
  const factory BuyCreditState.loading() = Loading;
  const factory BuyCreditState.success(final BuyCreditPlaceOrderEntity placeOrderEntity) = Success;
  const factory BuyCreditState.error(final String errCode, final String err) = Error;
}
