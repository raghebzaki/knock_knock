part of 'place_order_cubit.dart';

@freezed
class PlaceOrderStates with _$PlaceOrderStates {
  const factory PlaceOrderStates.initial() = _Initial;
  const factory PlaceOrderStates.loading() = Loading;
  const factory PlaceOrderStates.success(final PlaceOrderEntity placeOrderEntity) = Success;
  const factory PlaceOrderStates.error(final String errCode, final String err) = Error;
}
