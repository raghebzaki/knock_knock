part of 'my_orders_cubit.dart';

@freezed
class MyOrdersStates with _$MyOrdersStates {
  const factory MyOrdersStates.initial() = _Initial;
  const factory MyOrdersStates.loading() = Loading;
  const factory MyOrdersStates.success(final List<ProductsOrderEntity> myOrders) = Success;
  const factory MyOrdersStates.error(final String errCode, final String err) = Error;
  const factory MyOrdersStates.paginationLoading() = PaginationLoading;
  const factory MyOrdersStates.paginationError(final String errCode, final String err) = PaginationError;
}
