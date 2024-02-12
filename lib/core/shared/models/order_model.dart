
import '../entities/order_entity.dart';

class OrderModel extends OrderEntity {
  const OrderModel({
    super.id,
    super.userId,
    super.orderFilter,
    super.orderNumber,
    super.userName,
    super.phone,
    super.totalPrice,
    super.price,
    super.tax,
    super.date,
    super.status,
    super.message,
    super.acceptanceDate,
    super.preparingDate,
    super.availabilityDate,
    super.receivedDate,
    super.address,
    super.buildingNo,
    super.flatNo,
    super.state,
    super.city,
    super.zipCode,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json["id"],
      status: json["status"],
      orderNumber: json["order_number"],
      totalPrice: json["total_amount"],
      date: json["created_at"],
      // products: json["products"] == null
      //     ? []
      //     : List<ProductModel>.from(
      //         json["products"]!.map(
      //           (x) => ProductModel.fromJson(x),
      //         ),
      //       ),
    );
  }

  factory OrderModel.getOrdersFromJson(Map<String, dynamic> json) {
    return OrderModel(
      id: json["id"],
      status: json["status"],
      orderNumber: json["order_number"],
      totalPrice: json["total_amount"],
      price: json["amount"],
      tax: json["tax"],
      userName: json["name"],
      phone: json["phone"],
      date: json["created_at"],
      acceptanceDate: json["acceptance_date"]??'',
      preparingDate: json["preparing_date"]??'',
      availabilityDate: json["availability_date"]??'',
      receivedDate: json["received_date"]??'',
      address: json["address"],
      buildingNo: json["building_number"],
      flatNo: json["flot_number"],
      state: json["state"],
      city: json["city"],
      zipCode: json["post_code"],
      // products: json["products"] == null
      //     ? []
      //     : List<ProductModel>.from(
      //         json["products"]!.map(
      //           (x) => ProductModel.fromJson(x),
      //         ),
      //       ),
    );
  }

  static Map<String, dynamic> dataToJson(OrderEntity orderEntity) {
    return {
      "user_id": orderEntity.userId,
    };
  }

  static Map<String, dynamic> queryToJson(OrderEntity orderEntity) {
    return {
      "filters[status][\$eq]": orderEntity.orderFilter,
    };
  }

  factory OrderModel.addOrderFromJson(Map<String, dynamic> json) {
    return OrderModel(
      status: json["status"],
      message: json["message"],
    );
  }

  static Map<String, dynamic> addOrderToJson(OrderEntity orderEntity) {
    return {
      'id': orderEntity.id,
      'address': orderEntity.address,
      'phone': orderEntity.phone,
      'userName': orderEntity.userName,
    };
  }
}
