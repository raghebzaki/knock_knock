import 'package:equatable/equatable.dart';

import '../../../../../../core/shared/entities/product_entity.dart';

class ProductsOrderEntity extends Equatable {
  final num? id;
  final num? userId;
  final num? orderFilter;
  final String? orderNumber;
  final String? userName;
  final String? phone;
  final String? totalPrice;
  final String? price;
  final num? tax;
  final String? date;
  final int? status;
  final String? message;
  final String? discountPercentage;
  final String? discountAmount;
  final String? priceAfterDiscount;
  final String? shippingCost;
  final String? address;
  final String? buildingNo;
  final String? flatNo;
  final String? state;
  final String? city;
   final List<ProductEntity>? products;

  const ProductsOrderEntity({
    this.id,
    this.userId,
    this.orderFilter,
    this.orderNumber,
    this.userName,
    this.phone,
    this.totalPrice,
    this.price,
    this.tax,
    this.date,
    this.status,
    this.message,
    this.discountPercentage,
    this.discountAmount,
    this.priceAfterDiscount,
    this.shippingCost,
    this.address,
    this.buildingNo,
    this.flatNo,
    this.state,
    this.city,
    this.products,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        orderFilter,
        orderNumber,
        address,
        userName,
        phone,
        totalPrice,
        price,
        tax,
        date,
        status,
        message,
        discountPercentage,
        discountAmount,
        priceAfterDiscount,
        shippingCost,
        address,
        buildingNo,
        flatNo,
        state,
        city,

      ];
}
