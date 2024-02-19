import '../../domain/entities/products_place_order_entity.dart';

class ProductsPlaceOrderModel extends ProductsPlaceOrderEntity {
  const ProductsPlaceOrderModel({
    super.userId,
    super.name,
    super.phone,
    super.address,
    super.buildingNo,
    super.flatNo,
    super.city,
    super.state,
    super.postCode,
    super.productIds,
    super.coupon,
    super.status,
    super.msg,
  });

  factory ProductsPlaceOrderModel.fromJson(Map<String, dynamic> json) {
    return ProductsPlaceOrderModel(
      status: json['status'],
      msg: json['message'],
    );
  }

  static Map<String, dynamic> toJson(ProductsPlaceOrderEntity placeOrderEntity) {
    return {
      'user_id': placeOrderEntity.userId,
      'name': placeOrderEntity.name,
      'phone': placeOrderEntity.phone,
      'address': placeOrderEntity.address,
      'building_number': placeOrderEntity.buildingNo,
      'flot_number': placeOrderEntity.flatNo,
      'city': placeOrderEntity.city,
      'state': placeOrderEntity.state,
      'post_code': placeOrderEntity.postCode,
      'productInfo': placeOrderEntity.productIds,
      "sizeInfo": placeOrderEntity.sizeIds,
      "colorInfo": placeOrderEntity.colorIds,
      // 'coupon': placeOrderEntity.coupon,
    };
  }

  static Map<String, dynamic> toJsonIncludingCoupon(ProductsPlaceOrderEntity placeOrderEntity) {
    return {
      'user_id': placeOrderEntity.userId,
      'name': placeOrderEntity.name,
      'phone': placeOrderEntity.phone,
      'address': placeOrderEntity.address,
      'building_number': placeOrderEntity.buildingNo,
      'flot_number': placeOrderEntity.flatNo,
      'city': placeOrderEntity.city,
      'state': placeOrderEntity.state,
      'post_code': placeOrderEntity.postCode,
      'productInfo': placeOrderEntity.productIds,
      'coupon': placeOrderEntity.coupon,
    };
  }

}
