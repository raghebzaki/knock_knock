import 'package:dio/dio.dart';
import 'package:knockknock/core/shared/entities/order_entity.dart';
import 'package:knockknock/core/shared/models/order_model.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';


abstract class MyOrdersService {
  Future<List<OrderModel>> getOrders(OrderEntity myOrdersEntity);
}

class MyOrdersServiceImpl implements MyOrdersService {
  @override
  Future<List<OrderModel>> getOrders(OrderEntity myOrdersEntity) async {
    Dio dio = await DioFactory.getDio();
    List<OrderModel> ordersList = [];

    final orders = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.getMyOrdersUri,
      queryParameters: OrderModel.queryToJson(myOrdersEntity),
      data: OrderModel.dataToJson(myOrdersEntity),
    );

    if (orders.statusCode == 200) {
      Iterable l = orders.data;
      ordersList = List<OrderModel>.from(
        l.map(
              (model) => OrderModel.getOrdersFromJson(model),
        ),
      );
    }

    return ordersList;
  }
}
