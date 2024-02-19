part of 'products_place_order_cubit.dart';

@freezed
class ProductsPlaceOrderState with _$ProductsPlaceOrderState {
  const factory ProductsPlaceOrderState.initial() = _Initial;
  const factory ProductsPlaceOrderState.loading() = Loading;
  const factory ProductsPlaceOrderState.success(final ProductsPlaceOrderEntity placeOrderEntity) = Success;
  const factory ProductsPlaceOrderState.error(final String errCode, final String err) = Error;
}
