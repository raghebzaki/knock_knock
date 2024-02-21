import 'package:equatable/equatable.dart';

class CancelServiceOrderEntity extends Equatable {
  final num? orderId;
  final num? status;
  final String? msg;

  const CancelServiceOrderEntity({
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
