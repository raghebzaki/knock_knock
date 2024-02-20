import '../../domain/entities/cancel_order_entity.dart';

class CancelServicesOrderModel extends CancelServicesOrderEntity {
  const CancelServicesOrderModel({
    super.orderId,
    super.status,
    super.msg,
  });

  factory CancelServicesOrderModel.fromJson(Map<String, dynamic> json) {
    return CancelServicesOrderModel(
      status: json["status"],
      msg: json["message"],
    );
  }

  static Map<String, dynamic> toJson(CancelServicesOrderEntity cancelOrderEntity) {
    return {
      "status": 4,
    };
  }
}
