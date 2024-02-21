import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/cancel_order_entity.dart';
import '../models/cancel_order_model.dart';


abstract class CancelServiceOrderService {
  Future<CancelServiceOrderModel> cancelOrder(CancelServiceOrderEntity cancelOrderEntity);
}

class CancelServiceOrderServiceImpl implements CancelServiceOrderService {
  @override
  Future<CancelServiceOrderModel> cancelOrder(CancelServiceOrderEntity cancelOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    CancelServiceOrderModel cancelOrderModel = const CancelServiceOrderModel();

    final order = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.cancelServicesOrdersUri,
      data: CancelServiceOrderModel.toJson(cancelOrderEntity),
    );

    if (order.statusCode == 200) {
      cancelOrderModel = CancelServiceOrderModel.fromJson(order.data);
    }

    return cancelOrderModel;
  }

}
