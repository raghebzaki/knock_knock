import 'package:equatable/equatable.dart';

class BuyCreditPlaceOrderEntity extends Equatable {
  final num? userId;
  final num? packageId;
  final num? status;
  final String? msg;

  const BuyCreditPlaceOrderEntity({
    this.userId,
    this.packageId,
    this.status,
    this.msg,
  });

  @override
  List<Object?> get props => [
        userId,
        packageId,
        status,
        msg,
      ];
}
