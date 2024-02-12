import 'package:equatable/equatable.dart';

class OrderEntity extends Equatable {
  final num? id;
  final num? userId;
  final num? orderFilter;
  final String? orderNumber;
  final String? userName;
  final String? phone;
  final num? totalPrice;
  final num? price;
  final num? tax;
  final String? date;
  final int? status;
  final String? message;
  final String? acceptanceDate;
  final String? preparingDate;
  final String? availabilityDate;
  final String? receivedDate;
  final String? address;
  final String? buildingNo;
  final String? flatNo;
  final String? state;
  final String? city;
  final String? zipCode;
  // final List<ProductEntity>? products;

  const OrderEntity({
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
    this.acceptanceDate,
    this.preparingDate,
    this.availabilityDate,
    this.receivedDate,
    this.address,
    this.buildingNo,
    this.flatNo,
    this.state,
    this.city,
    this.zipCode,
    // this.products,
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
        acceptanceDate,
        preparingDate,
        availabilityDate,
        receivedDate,
        address,
        buildingNo,
        flatNo,
        state,
        city,
        zipCode,

      ];
}
