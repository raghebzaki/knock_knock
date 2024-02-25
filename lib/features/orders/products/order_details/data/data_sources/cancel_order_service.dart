import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/cancel_order_entity.dart';
import '../models/cancel_order_model.dart';


abstract class CancelProductOrderService {
  Future<CancelProductOrderModel> cancelOrder(CancelProductOrderEntity cancelOrderEntity);
}

class CancelProductOrderServiceImpl implements CancelProductOrderService {
  @override
  Future<CancelProductOrderModel> cancelOrder(CancelProductOrderEntity cancelOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    CancelProductOrderModel cancelOrderModel = const CancelProductOrderModel();

    final order = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.cancelProductsOrdersUri,
      data: CancelProductOrderModel.toJson(cancelOrderEntity),
    );

    if (order.statusCode == 200) {
      cancelOrderModel = CancelProductOrderModel.fromJson(order.data);
    }

    return cancelOrderModel;
  }

}
