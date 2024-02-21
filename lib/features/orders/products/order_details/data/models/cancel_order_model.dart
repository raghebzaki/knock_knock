import '../../domain/entities/cancel_order_entity.dart';

class CancelProductOrderModel extends CancelProductOrderEntity {
  const CancelProductOrderModel({
    super.orderId,
    super.status,
    super.msg,
  });

  factory CancelProductOrderModel.fromJson(Map<String, dynamic> json) {
    return CancelProductOrderModel(
      status: json["status"],
      msg: json["message"],
    );
  }

  static Map<String, dynamic> toJson(CancelProductOrderEntity cancelOrderEntity) {
    return {
      "order_id":cancelOrderEntity.orderId,
      "status": cancelOrderEntity.status,
    };
  }
}
