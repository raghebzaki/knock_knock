part of 'carousel_cubit.dart';

@freezed
class CarouselState with _$CarouselState {
  const factory CarouselState.initial() = _Initial;
  const factory CarouselState.loading() = Loading;
  const factory CarouselState.success(final List<CarouselEntity>? carouselEntity) = Success;
  const factory CarouselState.paginationLoading() = PaginationLoading;
  const factory CarouselState.paginationError(final String? errCode, final String? err) = PaginationError;
  const factory CarouselState.error(final String? errCode, final String? err) = Error;
}
