
import '../../domain/entities/products_coupon_entity.dart';


class ProductsCouponModel extends ProductsCouponEntity {
  const ProductsCouponModel({
    super.id,
    super.couponName,
    super.serviceCouponId,
    super.discountPercentage,
    super.discountAmount,
    super.priceAfterDiscount,
    super.grantTotal,
    super.serviceId,
    super.status,
    super.msg,
    super.information,
  });

  factory ProductsCouponModel.fromJson(Map<String, dynamic> json) {
    return ProductsCouponModel(
      serviceCouponId: json['service_coupon_id']??0,
      information: json["information_after_coupon_applied"]==null
          ? null
          : ProductsCouponModel.fromJsonInformation(json["information_after_coupon_applied"]),
      status: json['status'],
      msg: json['message'],
    );
  }
  factory ProductsCouponModel.fromJsonInformation(Map<String, dynamic> json) {
    return ProductsCouponModel(
      serviceCouponId: json['service_coupon_id']??0,
      discountPercentage: json['discount_percentage']??0,
      discountAmount: json['discount_amount']??0,
      priceAfterDiscount: json['price_after_discount']??0,
      grantTotal: json['grand_total']??0,

    );
  }

  static Map<String, dynamic> toJson(ProductsCouponEntity couponEntity) {
    return {
      'service_id': couponEntity.serviceId,
      'coupon_name': couponEntity.couponName,
    };
  }
}
