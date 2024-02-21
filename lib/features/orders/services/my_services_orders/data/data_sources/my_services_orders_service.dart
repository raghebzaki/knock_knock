import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../domain/entities/services_order_entity.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../models/services_order_model.dart';


abstract class MyServicesOrdersService {
  Future<List<ServicesOrderModel>> getOrders(ServicesOrderEntity myOrdersEntity,int? nextPage);
}

class MyServicesOrdersServiceImpl implements MyServicesOrdersService {
  @override
  Future<List<ServicesOrderModel>> getOrders(ServicesOrderEntity myOrdersEntity,int? nextPage) async {
    Dio dio = await DioFactory.getDio();
    List<ServicesOrderModel> ordersList = [];

    final orders = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.getServicesMyOrdersUri,
      data: ServicesOrderModel.dataToJson(myOrdersEntity),
      queryParameters: ServicesOrderModel.queryToJson(nextPage),
    );

    if (orders.statusCode == 200) {
      Iterable l = orders.data['data']['data'];
      ordersList = List<ServicesOrderModel>.from(
        l.map(
              (model) => ServicesOrderModel.getOrdersFromJson(model),
        ),
      );
    }

    return ordersList;
  }
}
