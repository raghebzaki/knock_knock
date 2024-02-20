
import '../../domain/entities/services_order_entity.dart';

class ServicesOrderModel extends ServicesOrderEntity {
  const ServicesOrderModel({
    super.id,
    super.userId,
    super.orderNumber,
    super.userName,
    super.phone,
    super.totalPrice,
    super.price,
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
  });

  factory ServicesOrderModel.fromJson(Map<String, dynamic> json) {
    return ServicesOrderModel(
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

  factory ServicesOrderModel.getOrdersFromJson(Map<String, dynamic> json) {
    return ServicesOrderModel(
      id: json["id"],
      status: json["status"],
      orderNumber: json["order_number"],
      totalPrice: json["total_amount"],
      price: json["amount"],
      userName: json["name"],
      phone: json["phone"],
      date: json["order_date"],
      acceptanceDate: json["acceptance_date"]??'',
      preparingDate: json["preparing_date"]??'',
      availabilityDate: json["availability_date"]??'',
      receivedDate: json["received_date"]??'',
      address: json["address"],
      buildingNo: json["building_number"],
      flatNo: json["flat_number"],
      state: json["country"],
      city: json["city"],
      // products: json["products"] == null
      //     ? []
      //     : List<ProductModel>.from(
      //         json["products"]!.map(
      //           (x) => ProductModel.fromJson(x),
      //         ),
      //       ),
    );
  }

  static Map<String, dynamic> dataToJson(ServicesOrderEntity orderEntity) {
    return {
      "user_id": orderEntity.userId,
      "order_status":orderEntity.status,
    };
  }

  // static Map<String, dynamic> queryToJson(ServicesOrderEntity orderEntity) {
  //   return {
  //     "filters[status][\$eq]": orderEntity.orderFilter,
  //   };
  // }

  factory ServicesOrderModel.addOrderFromJson(Map<String, dynamic> json) {
    return ServicesOrderModel(
      status: json["status"],
      message: json["message"],
    );
  }

  static Map<String, dynamic> addOrderToJson(ServicesOrderEntity orderEntity) {
    return {
      'id': orderEntity.id,
      'address': orderEntity.address,
      'phone': orderEntity.phone,
      'userName': orderEntity.userName,
    };
  }
}
