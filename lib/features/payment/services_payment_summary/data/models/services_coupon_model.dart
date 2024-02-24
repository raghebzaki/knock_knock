import 'package:knockknock/features/payment/services_payment_summary/domain/entities/coupon_entity.dart';


class ServicesCouponModel extends ServicesCouponEntity {
  const ServicesCouponModel({
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

  factory ServicesCouponModel.fromJson(Map<String, dynamic> json) {
    return ServicesCouponModel(
      serviceCouponId: json['service_coupon_id']??0,
      information: json["information_after_coupon_applied"]==null
          ? null
          : ServicesCouponModel.fromJsonInformation(json["information_after_coupon_applied"]),
      status: json['status'],
      msg: json['message'],
    );
  }
  factory ServicesCouponModel.fromJsonInformation(Map<String, dynamic> json) {
    return ServicesCouponModel(
      serviceCouponId: json['service_coupon_id']??0,
      discountPercentage: json['discount_percentage']??0,
      discountAmount: json['discount_amount']??0,
      priceAfterDiscount: json['price_after_discount']??0,
      grantTotal: json['grand_total']??0,

    );
  }

  static Map<String, dynamic> toJson(ServicesCouponEntity couponEntity) {
    return {
      'service_id': couponEntity.serviceId,
      'coupon_name': couponEntity.couponName,
    };
  }
}
