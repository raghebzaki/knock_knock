import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/services_place_order_entity.dart';
import '../models/services_place_order_model.dart';

abstract class ServicesPlaceOrderService {
  Future<ServicesPlaceOrderModel> placeOrder(ServicesPlaceOrderEntity placeOrderEntity);
}

class ServicesPlaceOrderServiceImpl implements ServicesPlaceOrderService {
  @override
  Future<ServicesPlaceOrderModel> placeOrder(ServicesPlaceOrderEntity placeOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    ServicesPlaceOrderModel placeOrderModel = const ServicesPlaceOrderModel();

    final order = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.placeOrderUri,
      data: placeOrderEntity.coupon == "" ? ServicesPlaceOrderModel.toJson(placeOrderEntity) : ServicesPlaceOrderModel.toJsonIncludingCoupon(placeOrderEntity),
    );

    if (order.statusCode == 200) {
      placeOrderModel = ServicesPlaceOrderModel.fromJson(order.data);
    }

    return placeOrderModel;
  }
}
