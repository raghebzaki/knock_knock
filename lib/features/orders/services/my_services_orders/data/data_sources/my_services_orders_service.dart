import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../domain/entities/services_order_entity.dart';
import '../models/services_order_model.dart';
import '../../../../../../core/utils/app_constants.dart';


abstract class MyServicesOrdersService {
  Future<List<ServicesOrderModel>> getOrders(ServicesOrderEntity myOrdersEntity);
}

class MyServicesOrdersServiceImpl implements MyServicesOrdersService {
  @override
  Future<List<ServicesOrderModel>> getOrders(ServicesOrderEntity myOrdersEntity) async {
    Dio dio = await DioFactory.getDio();
    List<ServicesOrderModel> ordersList = [];

    final orders = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.getServicesMyOrdersUri,
      data: ServicesOrderModel.dataToJson(myOrdersEntity),
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
