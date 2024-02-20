import '../../domain/entities/track_order_entity.dart';

class TrackOrderModel extends TrackOrderEntity {
  const TrackOrderModel({
    super.orderId,
    super.status,
    super.msg,
  });

  factory TrackOrderModel.fromJson(Map<String, dynamic> json) {
    return TrackOrderModel(
      status: json["status"],
      msg: json["message"],
    );
  }

  static Map<String, dynamic> toJson(TrackOrderEntity trackOrderEntity) {
    return {
      "order_id": trackOrderEntity.orderId,
    };
  }
}
