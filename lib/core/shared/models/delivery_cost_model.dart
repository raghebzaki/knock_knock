import 'package:equatable/equatable.dart';

class DeliveryCost extends Equatable {
  static num? id;
  static String? deliveryCost;
  static String? shippingCost;


  DeliveryCost.fromJson(Map<String, dynamic> json) {
    id = json["id"] ; // 2077
    deliveryCost = json["delivery_cost"] ; // UNKNOWN STRING VALUE
    shippingCost = json["shipping_cost"] ; // UNKNOWN STRING VALUE
  }


  @override
  List<Object?> get props => [
        id,
        deliveryCost,
      ];
}
