import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/products_order_entity.dart';
import '../models/produts_order_model.dart';


abstract class MyProductsOrdersService {
  Future<List<ProductsOrderModel>> getOrders(ProductsOrderEntity myOrdersEntity);
}

class MyProductsOrdersServiceImpl implements MyProductsOrdersService {
  @override
  Future<List<ProductsOrderModel>> getOrders(ProductsOrderEntity myOrdersEntity) async {
    Dio dio = await DioFactory.getDio();
    List<ProductsOrderModel> ordersList = [];

    final orders = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.getMyOrdersUri,
      queryParameters: ProductsOrderModel.queryToJson(myOrdersEntity),
      data: ProductsOrderModel.dataToJson(myOrdersEntity),
    );

    if (orders.statusCode == 200) {
      Iterable l = orders.data;
      ordersList = List<ProductsOrderModel>.from(
        l.map(
              (model) => ProductsOrderModel.getOrdersFromJson(model),
        ),
      );
    }

    return ordersList;
  }
}
