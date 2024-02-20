import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/cancel_order_entity.dart';
import '../models/cancel_order_model.dart';


abstract class CancelOrderService {
  Future<CancelOrderModel> cancelOrder(CancelOrderEntity cancelOrderEntity);
}

class CancelOrderServiceImpl implements CancelOrderService {
  @override
  Future<CancelOrderModel> cancelOrder(CancelOrderEntity cancelOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    CancelOrderModel cancelOrderModel = const CancelOrderModel();

    final order = await dio.put(
      "${AppConstants.apiBaseUrl + AppConstants.getMyOrdersUri}/${cancelOrderEntity.orderId}",
      data: CancelOrderModel.toJson(cancelOrderEntity),
    );

    if (order.statusCode == 200) {
      cancelOrderModel = CancelOrderModel.fromJson(order.data);
    }

    return cancelOrderModel;
  }

}
