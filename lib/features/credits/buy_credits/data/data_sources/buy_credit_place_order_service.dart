import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/buy_credit_place_order_entity.dart';
import '../models/buy_credit_place_order_model.dart';

abstract class BuyCreditPlaceOrderService {
  Future<BuyCreditPlaceOrderModel> buyCredit(BuyCreditPlaceOrderEntity placeOrderEntity);
}

class BuyCreditPlaceOrderServiceImpl implements BuyCreditPlaceOrderService {
  @override
  Future<BuyCreditPlaceOrderModel> buyCredit(BuyCreditPlaceOrderEntity placeOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    BuyCreditPlaceOrderModel placeOrderModel = const BuyCreditPlaceOrderModel();

    final order = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.buyCreditPlaceOrderUri,
      data: BuyCreditPlaceOrderModel.toJson(placeOrderEntity),
    );

    if (order.statusCode == 200) {
      placeOrderModel = BuyCreditPlaceOrderModel.fromJson(order.data);
    }

    return placeOrderModel;
  }
}
