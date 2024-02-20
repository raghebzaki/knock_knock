import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/cancel_order_entity.dart';
import '../models/cancel_order_model.dart';


abstract class CancelServicesOrderService {
  Future<CancelServicesOrderModel> cancelOrder(CancelServicesOrderEntity cancelOrderEntity);
}

class CancelServicesOrderServiceImpl implements CancelServicesOrderService {
  @override
  Future<CancelServicesOrderModel> cancelOrder(CancelServicesOrderEntity cancelOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    CancelServicesOrderModel cancelOrderModel = const CancelServicesOrderModel();

    final order = await dio.put(
      "${AppConstants.apiBaseUrl + AppConstants.getMyOrdersUri}/${cancelOrderEntity.orderId}",
      data: CancelServicesOrderModel.toJson(cancelOrderEntity),
    );

    if (order.statusCode == 200) {
      cancelOrderModel = CancelServicesOrderModel.fromJson(order.data);
    }

    return cancelOrderModel;
  }

}
