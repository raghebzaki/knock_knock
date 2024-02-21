import '../../domain/entities/cancel_order_entity.dart';

class CancelServiceOrderModel extends CancelServiceOrderEntity {
  const CancelServiceOrderModel({
    super.orderId,
    super.status,
    super.msg,
  });

  factory CancelServiceOrderModel.fromJson(Map<String, dynamic> json) {
    return CancelServiceOrderModel(
      status: json["status"],
      msg: json["message"],
    );
  }

  static Map<String, dynamic> toJson(CancelServiceOrderEntity cancelOrderEntity) {
    return {
      "order_id":cancelOrderEntity.orderId,
      "status": cancelOrderEntity.status,
    };
  }
}
