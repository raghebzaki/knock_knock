import 'package:equatable/equatable.dart';

class TrackServicesOrderEntity extends Equatable {
  final num? orderId;
  final num? status;
  final String? msg;

  const TrackServicesOrderEntity({
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
