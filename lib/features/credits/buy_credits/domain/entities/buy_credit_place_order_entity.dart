import 'package:equatable/equatable.dart';

class BuyCreditPlaceOrderEntity extends Equatable {
  final num? userId;
  final num? packageId;
  final num? status;
  final String? msg;
  final String? paymentLink;


  const BuyCreditPlaceOrderEntity({
    this.userId,
    this.packageId,
    this.status,
    this.msg,
    this.paymentLink
  });

  @override
  List<Object?> get props => [
        userId,
        packageId,
        status,
        msg,
      ];
}
