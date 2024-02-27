import 'package:equatable/equatable.dart';


class ProductsCouponEntity extends Equatable {
  final num? id;
  final String? couponName;
  final List<num>? productsId;
  final List<num>? productsQuantities;
  final num? productCouponId;
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
    this.productCouponId,
    this.discountPercentage,
    this.discountAmount,
    this.priceAfterDiscount,
    this.grantTotal,
    this.productsId,
    this.productsQuantities,
    this.status,
    this.msg,
    this.information
  });

  @override
  List<Object?> get props =>
      [
        id,
        couponName,
        productsId,
        productsQuantities,
        productCouponId,
        discountPercentage,
        discountAmount,
        priceAfterDiscount,
        grantTotal,
        status,
        msg,
      ];

}
