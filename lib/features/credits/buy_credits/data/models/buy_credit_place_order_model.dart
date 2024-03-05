import '../../domain/entities/buy_credit_place_order_entity.dart';

class BuyCreditPlaceOrderModel extends BuyCreditPlaceOrderEntity {
  const BuyCreditPlaceOrderModel({
    super.userId,
    super.packageId,
    super.status,
    super.msg,
    super.paymentLink
  });

  factory BuyCreditPlaceOrderModel.fromJson(Map<String, dynamic> json) {
    return BuyCreditPlaceOrderModel(
      paymentLink: json['payment_link'],
    );
  }
  factory BuyCreditPlaceOrderModel.addBalanceFromJson(Map<String, dynamic> json) {
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
