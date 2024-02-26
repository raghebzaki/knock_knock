import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/products_order_entity.dart';
import '../models/produts_order_model.dart';


abstract class MyProductsOrdersService {
  Future<List<ProductsOrderModel>> getOrders(ProductsOrderEntity myOrdersEntity,num? nextPage);
}

class MyProductsOrdersServiceImpl implements MyProductsOrdersService {
  @override
  Future<List<ProductsOrderModel>> getOrders(ProductsOrderEntity myOrdersEntity,num? nextPage) async {
    Dio dio = await DioFactory.getDio();
    List<ProductsOrderModel> ordersList = [];

    final orders = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.getProductsMyOrdersUri,
      queryParameters: ProductsOrderModel.queryToJson(nextPage),
      data: ProductsOrderModel.dataToJson(myOrdersEntity),
    );

    if (orders.statusCode == 200) {
      Iterable l = orders.data["data"]["data"];
      ordersList = List<ProductsOrderModel>.from(
        l.map(
              (model) => ProductsOrderModel.getOrdersFromJson(model),
        ),
      );
    }

    return ordersList;
  }
}
