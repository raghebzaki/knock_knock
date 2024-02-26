
import '../../../../../../core/shared/models/product_model.dart';
import '../../domain/entities/products_order_entity.dart';

class ProductsOrderModel extends ProductsOrderEntity {
  const ProductsOrderModel({
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
    super.discountPercentage,
    super.discountAmount,
    super.priceAfterDiscount,
    super.shippingCost,
    super.address,
    super.buildingNo,
    super.flatNo,
    super.state,
    super.city,
    super.products,
  });

  factory ProductsOrderModel.fromJson(Map<String, dynamic> json) {
    return ProductsOrderModel(
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

  factory ProductsOrderModel.getOrdersFromJson(Map<String, dynamic> json) {
    return ProductsOrderModel(
      id: json["id"],
      status: json["status"],
      orderNumber: json["order_number"],
      totalPrice: json["grand_total"],
      price: json["amount"],
      userName: json["name"],
      phone: json["phone"],
      date: json["order_date"],
      discountPercentage: json["discount_percentage"]??'',
      discountAmount: json["discount_amount"]??'',
      priceAfterDiscount: json["price_after_discount"]??'',
      shippingCost: json["shipping_cost"]??'',
      address: json["address"],
      buildingNo: json["building_number"],
      flatNo: json["flat_number"],
      state: json["country"],
      city: json["city"],
      products: json["product"] == null
          ? []
          : List<ProductModel>.from(
              json["product"]!.map(
                (x) => ProductModel.fromJson(x),
              ),
            ),
    );
  }

  static Map<String, dynamic> dataToJson(ProductsOrderEntity orderEntity) {
    return {
      "user_id": orderEntity.userId,
      "order_status":orderEntity.status
    };
  }

  static Map<String, dynamic> queryToJson(num? nextPage) {
    return {
      "page": nextPage,
    };
  }

}
