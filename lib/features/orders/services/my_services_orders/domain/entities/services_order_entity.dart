import 'package:equatable/equatable.dart';

class ServicesOrderEntity extends Equatable {
  final num? id;
  final num? userId;
  final String? orderNumber;
  final String? userName;
  final String? phone;
  final String? totalPrice;
  final String? price;
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
  // final List<ProductEntity>? products;

  const ServicesOrderEntity({
    this.id,
    this.userId,
    this.orderNumber,
    this.userName,
    this.phone,
    this.totalPrice,
    this.price,
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
    // this.products,
  });

  @override
  List<Object?> get props => [
        id,
        userId,
        orderNumber,
        address,
        userName,
        phone,
        totalPrice,
        price,
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
      ];
}
