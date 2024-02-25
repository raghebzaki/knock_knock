import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/gift_place_order_entity.dart';
import '../models/gift_place_order_model.dart';

abstract class GiftPlaceOrderService {
  Future<GiftPlaceOrderModel> placeOrder(GiftPlaceOrderEntity placeOrderEntity);
}

class GiftPlaceOrderServiceImpl implements GiftPlaceOrderService {
  @override
  Future<GiftPlaceOrderModel> placeOrder(GiftPlaceOrderEntity placeOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    GiftPlaceOrderModel placeOrderModel = const GiftPlaceOrderModel();

    final order = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.giftPlaceOrderUri,
      data: placeOrderEntity.coupon == "" ? GiftPlaceOrderModel.toJson(placeOrderEntity) : GiftPlaceOrderModel.toJsonIncludingCoupon(placeOrderEntity),
    );

    if (order.statusCode == 200) {
      placeOrderModel = GiftPlaceOrderModel.fromJson(order.data);
    }

    return placeOrderModel;
  }
}
