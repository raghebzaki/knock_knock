part of 'service_cancel_order_cubit.dart';

@freezed
class ServiceCancelOrderState with _$ServiceCancelOrderState {
  const factory ServiceCancelOrderState.initial() = _Initial;
  const factory ServiceCancelOrderState.loading() = Loading;
  const factory ServiceCancelOrderState.success(final CancelServiceOrderEntity cancelOrderEntity) = Success;
  const factory ServiceCancelOrderState.error(final String errCode, final String err) = Error;
}
