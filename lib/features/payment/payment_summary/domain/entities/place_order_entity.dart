import 'package:equatable/equatable.dart';

class PlaceOrderEntity extends Equatable {
  final num? userId;
  final String? name;
  final String? phone;
  final String? address;
  final String? buildingNo;
  final String? flatNo;
  final String? city;
  final String? state;
  final String? postCode;
  final Map? productIds;
  final Map? colorIds;
  final Map? sizeIds;
  final String? coupon;
  final num? status;
  final String? msg;

  const PlaceOrderEntity({
    this.userId,
    this.name,
    this.phone,
    this.address,
    this.buildingNo,
    this.flatNo,
    this.city,
    this.state,
    this.postCode,
    this.productIds,
    this.colorIds,
    this.sizeIds,
    this.coupon,
    this.status,
    this.msg,
  });

  @override
  List<Object?> get props => [
        userId,
        name,
        phone,
        address,
        buildingNo,
        flatNo,
        city,
        state,
        postCode,
        productIds,
        colorIds,
        sizeIds,
        coupon,
        status,
        msg,
      ];
}
