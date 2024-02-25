part of 'products_coupon_cubit.dart';

@freezed
class ProductsCouponState with _$ProductsCouponState {
  const factory ProductsCouponState.initial() = _Initial;
  const factory ProductsCouponState.loading() = Loading;
  const factory ProductsCouponState.success(final ProductsCouponEntity couponEntity) = Success;
  const factory ProductsCouponState.error(final String errCode, final String err) = Error;
}
