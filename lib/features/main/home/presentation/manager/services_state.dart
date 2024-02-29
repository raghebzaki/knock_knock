part of 'services_cubit.dart';

@freezed
class ServicesState with _$ServicesState {
  const factory ServicesState.initial() = _Initial;
  const factory ServicesState.loading() = Loading;
  const factory ServicesState.success(final List<ServicesEntity>? servicesEntity) = Success;
  const factory ServicesState.error(final String? errCode, final String? err) = Error;
  const factory ServicesState.paginationLoading() = PaginationLoading;
  const factory ServicesState.paginationError(final String? errCode, final String? err) = PaginationSuccess;
  const factory ServicesState.searchLoading() = SearchLoading;
  const factory ServicesState.searchSuccess(final List<ServicesEntity>? servicesEntity) = SearchSuccess;
  const factory ServicesState.searchError(final String? errCode, final String? err) = SearchError;
}
