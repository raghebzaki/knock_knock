part of 'my_services_orders_cubit.dart';

@freezed
class MyServicesOrdersState with _$MyServicesOrdersState {
  const factory MyServicesOrdersState.initial() = _Initial;
  const factory MyServicesOrdersState.loading() = Loading;
  const factory MyServicesOrdersState.success(final List<ServicesOrderEntity> myOrders) = Success;
  const factory MyServicesOrdersState.error(final String errCode, final String err) = Error;
}
