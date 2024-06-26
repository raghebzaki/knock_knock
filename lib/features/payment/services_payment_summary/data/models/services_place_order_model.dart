import '../../domain/entities/services_place_order_entity.dart';

class ServicesPlaceOrderModel extends ServicesPlaceOrderEntity {
  const ServicesPlaceOrderModel({
    super.userId,
    super.latitude,
    super.longitude,
    super.address,
    super.buildingNo,
    super.flatNo,
    super.city,
    super.state,
    super.note,
    super.serviceId,
    super.selectedDayId,
    super.selectedTime,
    super.paymentMethod,
    super.serviceCouponId,
    super.discountPercentage,
    super.discountAmount,
    super.priceAfterDiscount,
    super.grantTotal,
    super.status,
    super.msg,
    super.paymentLink,
  });

  factory ServicesPlaceOrderModel.fromJson(Map<String, dynamic> json) {
    return ServicesPlaceOrderModel(
      status: json['status'],
      msg: json['message'],
    );
  }
  factory ServicesPlaceOrderModel.visaFromJson(Map<String, dynamic> json) {
    return ServicesPlaceOrderModel(
      paymentLink: json['payment_link'],
      status: json['status']??0,
      msg: json['message']??'',
    );
  }

  static Map<String, dynamic> toJson(ServicesPlaceOrderEntity placeOrderEntity) {
    return {
      'user_id': placeOrderEntity.userId,
      'latitude': placeOrderEntity.latitude,
      'longitude': placeOrderEntity.longitude,
      'address': placeOrderEntity.address,
      'building_number': placeOrderEntity.buildingNo,
      'flat_number': placeOrderEntity.flatNo,
      'city': placeOrderEntity.city,
      'country': placeOrderEntity.state,
      'notes': placeOrderEntity.note,
      'service_id': placeOrderEntity.serviceId,
      "selected_day_id": placeOrderEntity.selectedDayId,
      "selected_time": placeOrderEntity.selectedTime,
      'payment_method': placeOrderEntity.paymentMethod,
      'service_coupon_id': placeOrderEntity.serviceCouponId,
      'discount_percentage': placeOrderEntity.discountPercentage,
      "discount_amount": placeOrderEntity.discountAmount,
      "price_after_discount": placeOrderEntity.priceAfterDiscount,
      'grant_total': placeOrderEntity.grantTotal,
    };
  }
}
