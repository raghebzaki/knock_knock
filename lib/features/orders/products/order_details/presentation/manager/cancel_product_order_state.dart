part of 'cancel_product_order_cubit.dart';

@freezed
class CancelProductOrderState with _$CancelProductOrderState {
  const factory CancelProductOrderState.initial() = _Initial;
  const factory CancelProductOrderState.loading() = Loading;
  const factory CancelProductOrderState.success(final CancelProductOrderEntity productOrderEntity) = Success;
  const factory CancelProductOrderState.error(final String errCode, final String err) = Error;
}
