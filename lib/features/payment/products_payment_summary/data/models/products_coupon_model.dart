
import 'dart:convert';

import '../../domain/entities/products_coupon_entity.dart';


class ProductsCouponModel extends ProductsCouponEntity {
  const ProductsCouponModel({
    super.id,
    super.couponName,
    super.productCouponId,
    super.discountPercentage,
    super.discountAmount,
    super.priceAfterDiscount,
    super.grantTotal,
    super.productsId,
    super.productsQuantities,
    super.status,
    super.msg,
    super.information,
  });

  factory ProductsCouponModel.fromJson(Map<String, dynamic> json) {
    return ProductsCouponModel(
      productCouponId: json['product_coupon_id']??0,
      information: json["information_after_coupon_applied"]==null
          ? null
          : ProductsCouponModel.fromJsonInformation(json["information_after_coupon_applied"]),
      status: json['status'],
      msg: json['message'],
    );
  }
  factory ProductsCouponModel.fromJsonInformation(Map<String, dynamic> json) {
    return ProductsCouponModel(
      productCouponId: json['product_coupon_id']??0,
      discountPercentage: json['discount_percentage']??0,
      discountAmount: json['discount_amount']??0,
      priceAfterDiscount: json['price_after_discount']??0,
      grantTotal: json['grand_total']??0,

    );
  }

  static Map<String, dynamic> toJson(ProductsCouponEntity couponEntity) {
    return {
      'product_ids': jsonEncode(couponEntity.productsId),
      'product_quantities': jsonEncode(couponEntity.productsQuantities),
      'coupon_name': couponEntity.couponName,
    };
  }
}
