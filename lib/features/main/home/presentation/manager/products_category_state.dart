part of 'products_category_cubit.dart';

@freezed
class ProductsCategoryState with _$ProductsCategoryState {
  const factory ProductsCategoryState.initial() = _Initial;
  const factory ProductsCategoryState.loading() = Loading;
  const factory ProductsCategoryState.success(final List<ProductsCategoryEntity>? productsCategoryEntity) = Success;
  const factory ProductsCategoryState.error(final String? errCode, final String? err) = Error;
}
