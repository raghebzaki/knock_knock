import 'package:equatable/equatable.dart';

class CancelOrderEntity extends Equatable {
  final num? orderId;
  final num? status;
  final String? msg;

  const CancelOrderEntity({
    this.orderId,
    this.status,
    this.msg,
  });

  @override
  List<Object?> get props => [
        orderId,
        status,
        msg,
      ];
}
