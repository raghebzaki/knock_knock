import 'package:equatable/equatable.dart';

class CancelServicesOrderEntity extends Equatable {
  final num? orderId;
  final num? status;
  final String? msg;

  const CancelServicesOrderEntity({
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
