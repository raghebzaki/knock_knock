import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/products_place_order_entity.dart';
import '../models/products_place_order_model.dart';

abstract class ProductsPlaceOrderService {
  Future<ProductsPlaceOrderModel> placeOrder(ProductsPlaceOrderEntity placeOrderEntity);
}

class ProductsPlaceOrderServiceImpl implements ProductsPlaceOrderService {
  @override
  Future<ProductsPlaceOrderModel> placeOrder(ProductsPlaceOrderEntity placeOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    ProductsPlaceOrderModel placeOrderModel = const ProductsPlaceOrderModel();

    final order = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.productsPlaceOrderUri,
      data: ProductsPlaceOrderModel.toJson(placeOrderEntity),
    );

    if (order.statusCode == 200) {
      placeOrderModel = ProductsPlaceOrderModel.fromJson(order.data);
    }

    return placeOrderModel;
  }
}
