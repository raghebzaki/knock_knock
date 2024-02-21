import 'package:equatable/equatable.dart';

class CancelProductOrderEntity extends Equatable {
  final num? orderId;
  final num? status;
  final String? msg;

  const CancelProductOrderEntity({
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
