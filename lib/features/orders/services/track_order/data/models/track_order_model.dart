import '../../domain/entities/track_order_entity.dart';

class TrackServicesOrderModel extends TrackServicesOrderEntity {
  const TrackServicesOrderModel({
    super.orderId,
    super.status,
    super.msg,
  });

  factory TrackServicesOrderModel.fromJson(Map<String, dynamic> json) {
    return TrackServicesOrderModel(
      status: json["status"],
      msg: json["message"],
    );
  }

  static Map<String, dynamic> toJson(TrackServicesOrderEntity trackOrderEntity) {
    return {
      "order_id": trackOrderEntity.orderId,
    };
  }
}
