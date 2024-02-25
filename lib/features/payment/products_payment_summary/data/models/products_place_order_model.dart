import 'dart:convert';

import '../../domain/entities/products_place_order_entity.dart';

class ProductsPlaceOrderModel extends ProductsPlaceOrderEntity {
  const ProductsPlaceOrderModel({
    super.userId,
    super.latitude,
    super.longitude,
    super.address,
    super.buildingNo,
    super.flatNo,
    super.city,
    super.state,
    super.note,
    super.productsId,
    super.productQuantities,
    super.selectedTime,
    super.paymentMethod,
    super.productCouponId,
    super.discountPercentage,
    super.discountAmount,
    super.priceAfterDiscount,
    super.grantTotal,
    super.status,
    super.msg,
  });

  factory ProductsPlaceOrderModel.fromJson(Map<String, dynamic> json) {
    return ProductsPlaceOrderModel(
      status: json['status'],
      msg: json['message'],
    );
  }

  static Map<String, dynamic> toJson(ProductsPlaceOrderEntity placeOrderEntity) {
    return {
      'user_id': placeOrderEntity.userId,
      'latitude': placeOrderEntity.latitude,
      'longitude': placeOrderEntity.longitude,
      'address': placeOrderEntity.address,
      'building_number': placeOrderEntity.buildingNo,
      'flat_number': placeOrderEntity.flatNo,
      'city': placeOrderEntity.city,
      'country': placeOrderEntity.state,
      'product_ids': jsonEncode(placeOrderEntity.productsId),
      "product_quantities": jsonEncode(placeOrderEntity.productQuantities),
      'payment_method': placeOrderEntity.paymentMethod,
      'service_coupon_id': placeOrderEntity.productCouponId,
      'discount_percentage': placeOrderEntity.discountPercentage,
      "discount_amount": placeOrderEntity.discountAmount,
      "price_after_discount": placeOrderEntity.priceAfterDiscount,
      'grant_total': placeOrderEntity.grantTotal,
    };
  }

}
