import 'package:equatable/equatable.dart';


class ProductsCouponEntity extends Equatable {
  final num? id;
  final String? couponName;
  final num? serviceId;
  final num? serviceCouponId;
  final num? discountPercentage;
  final num? discountAmount;
  final num? priceAfterDiscount;
  final num? grantTotal;
  final num? status;
  final String? msg;
  final ProductsCouponEntity? information;

  const ProductsCouponEntity({
    this.id,
    this.couponName,
    this.serviceCouponId,
    this.discountPercentage,
    this.discountAmount,
    this.priceAfterDiscount,
    this.grantTotal,
    this.serviceId,
    this.status,
    this.msg,
    this.information
  });

  @override
  List<Object?> get props =>
      [
        id,
        couponName,
        serviceId,
        serviceCouponId,
        discountPercentage,
        discountAmount,
        priceAfterDiscount,
        grantTotal,
        status,
        msg,
      ];

}
