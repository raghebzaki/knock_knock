part of 'products_cubit.dart';

@freezed
class ProductsState with _$ProductsState {
  const factory ProductsState.initial() = _Initial;
  const factory ProductsState.loading() = Loading;
  const factory ProductsState.success(final List<ProductEntity>? productEntity) = Success;
  const factory ProductsState.error(final String? errCode, final String? err) = Error;
  const factory ProductsState.paginationLoading() = PaginationLoading;
  const factory ProductsState.paginationError(final String? errCode, final String? err) = PaginationSuccess;

}
