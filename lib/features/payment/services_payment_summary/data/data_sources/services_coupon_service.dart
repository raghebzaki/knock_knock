import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/coupon_entity.dart';
import '../models/services_coupon_model.dart';

abstract class ServicesCouponService {
  Future<ServicesCouponModel> applyCoupon(ServicesCouponEntity placeOrderEntity);
}

class ServicesCouponServiceImpl implements ServicesCouponService {
  @override
  Future<ServicesCouponModel> applyCoupon(ServicesCouponEntity placeOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    ServicesCouponModel couponModel = const ServicesCouponModel();

    final order = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.servicesCouponUri,
      data:  ServicesCouponModel.toJson(placeOrderEntity),
    );

    if (order.statusCode == 200) {
      couponModel = ServicesCouponModel.fromJson(order.data);
    }

    return couponModel;
  }
}
