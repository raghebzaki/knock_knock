import 'package:equatable/equatable.dart';
import 'package:knockknock/core/shared/models/product_model.dart';

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
   final List<Items>? items;

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
    this.items,
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

class Items {
  int? id;
  int? productOrderId;
  int? productId;
  String? pricePerUnit;
  int? quantity;
  int? totalPrice;
  String? createdAt;
  String? updatedAt;
  ProductEntity? product;

  Items({this.id,
    this.productOrderId,
    this.productId,
    this.pricePerUnit,
    this.quantity,
    this.totalPrice,
    this.createdAt,
    this.updatedAt,
    this.product});

  Items.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productOrderId = json['product_order_id'];
    productId = json['product_id'];
    pricePerUnit = json['price_per_unit'];
    quantity = json['quantity'];
    totalPrice = json['total_price'];
    product = json['product'] != null ?  ProductModel.fromJson(json['product']) : null;
  }
}