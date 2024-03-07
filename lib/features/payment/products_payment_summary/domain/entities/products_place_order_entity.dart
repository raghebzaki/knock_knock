import 'package:equatable/equatable.dart';

class ProductsPlaceOrderEntity extends Equatable {
  final num? userId;
  final String? latitude;
  final String? longitude;
  final String? address;
  final String? buildingNo;
  final String? flatNo;
  final String? city;
  final String? state;
  final String? note;
  final List<num>? productsId;
  final List<num>? productQuantities;
  final String? selectedTime;
  final String? paymentMethod;
  final num? productCouponId;
  final num? discountPercentage;
  final num? discountAmount;
  final num? priceAfterDiscount;
  final num? grantTotal;
  final num? status;
  final String? msg;
  final String? paymentLink;

  const ProductsPlaceOrderEntity({
    this.userId,
    this.latitude,
    this.longitude,
    this.address,
    this.buildingNo,
    this.flatNo,
    this.city,
    this.state,
    this.note,
    this.productsId,
    this.productQuantities,
    this.selectedTime,
    this.paymentMethod,
    this.productCouponId,
    this.discountPercentage,
    this.discountAmount,
    this.priceAfterDiscount,
    this.grantTotal,
    this.status,
    this.msg,
    this.paymentLink
  });

  @override
  List<Object?> get props =>
      [
        userId,
        latitude,
        longitude,
        address,
        buildingNo,
        flatNo,
        city,
        state,
        note,
        productsId,
        productQuantities,
        selectedTime,
        paymentMethod,
        productCouponId,
        discountPercentage,
        discountAmount,
        priceAfterDiscount,
        grantTotal,
        status,
        msg,
      ];
}
