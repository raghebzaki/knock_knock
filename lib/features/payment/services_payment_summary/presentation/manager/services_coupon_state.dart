part of 'services_coupon_cubit.dart';

@freezed
class ServicesCouponState with _$ServicesCouponState {
  const factory ServicesCouponState.initial() = _Initial;
  const factory ServicesCouponState.loading() = Loading;
  const factory ServicesCouponState.success(final ServicesCouponEntity couponEntity) = Success;
  const factory ServicesCouponState.error(final String errCode, final String err) = Error;
}
