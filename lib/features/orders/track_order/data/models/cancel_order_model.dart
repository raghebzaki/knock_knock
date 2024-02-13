import '../../domain/entities/cancel_order_entity.dart';

class CancelOrderModel extends CancelOrderEntity {
  const CancelOrderModel({
    super.orderId,
    super.status,
    super.msg,
  });

  factory CancelOrderModel.fromJson(Map<String, dynamic> json) {
    return CancelOrderModel(
      status: json["status"],
      msg: json["message"],
    );
  }

  static Map<String, dynamic> toJson(CancelOrderEntity cancelOrderEntity) {
    return {
      "status": 4,
    };
  }
}
