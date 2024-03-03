import '../../domain/entities/buy_credit_place_order_entity.dart';

class BuyCreditPlaceOrderModel extends BuyCreditPlaceOrderEntity {
  const BuyCreditPlaceOrderModel({
    super.userId,
    super.packageId,
    super.status,
    super.msg,
  });

  factory BuyCreditPlaceOrderModel.fromJson(Map<String, dynamic> json) {
    return BuyCreditPlaceOrderModel(
      status: json['status'],
      msg: json['message'],
    );
  }

  static Map<String, dynamic> toJson(BuyCreditPlaceOrderEntity placeOrderEntity) {
    return {
      'user_id': placeOrderEntity.userId,
      'package_id': placeOrderEntity.packageId,

    };
  }

}
