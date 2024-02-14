import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/place_order_entity.dart';
import '../models/place_order_model.dart';

abstract class PlaceOrderService {
  Future<PlaceOrderModel> placeOrder(PlaceOrderEntity placeOrderEntity);
}

class PlaceOrderServiceImpl implements PlaceOrderService {
  @override
  Future<PlaceOrderModel> placeOrder(PlaceOrderEntity placeOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    PlaceOrderModel placeOrderModel = const PlaceOrderModel();

    final order = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.placeOrderUri,
      data: placeOrderEntity.coupon == "" ? PlaceOrderModel.toJson(placeOrderEntity) : PlaceOrderModel.toJsonIncludingCoupon(placeOrderEntity),
    );

    if (order.statusCode == 200) {
      placeOrderModel = PlaceOrderModel.fromJson(order.data);
    }

    return placeOrderModel;
  }
}
