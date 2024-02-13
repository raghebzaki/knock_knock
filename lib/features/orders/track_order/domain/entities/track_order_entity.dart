import 'package:equatable/equatable.dart';

class TrackOrderEntity extends Equatable {
  final num? orderId;
  final num? status;
  final String? msg;

  const TrackOrderEntity({
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
