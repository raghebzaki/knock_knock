part of 'services_place_order_cubit.dart';

@freezed
class ServicesPlaceOrderState with _$ServicesPlaceOrderState {
  const factory ServicesPlaceOrderState.initial() = _Initial;
  const factory ServicesPlaceOrderState.loading() = Loading;
  const factory ServicesPlaceOrderState.success(final ServicesPlaceOrderEntity placeOrderEntity) = Success;
  const factory ServicesPlaceOrderState.error(final String errCode, final String err) = Error;
}
