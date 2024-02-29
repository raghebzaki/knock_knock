part of 'search_cubit.dart';

@freezed
class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;
  const factory SearchState.loading() = Loading;
  const factory SearchState.successProducts(final List<ProductEntity>? productEntity) = SuccessProducts;
  const factory SearchState.successServices(final List<ServicesEntity>? servicesEntity) = SuccessServices;
  const factory SearchState.error(final String? errCode, final String? err) = Error;
  const factory SearchState.paginationLoading() = PaginationLoading;
  const factory SearchState.paginationError(final String? errCode, final String? err) = PaginationSuccess;
}
