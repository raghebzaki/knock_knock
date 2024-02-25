import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/products_coupon_entity.dart';
import '../models/products_coupon_model.dart';

abstract class ProductsCouponService {
  Future<ProductsCouponModel> applyCoupon(ProductsCouponEntity placeOrderEntity);
}

class ProductsCouponServiceImpl implements ProductsCouponService {
  @override
  Future<ProductsCouponModel> applyCoupon(ProductsCouponEntity placeOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    ProductsCouponModel couponModel = const ProductsCouponModel();

    final order = await dio.post(
      AppConstants.apiBaseUrl + AppConstants.productsCouponUri,
      data:  ProductsCouponModel.toJson(placeOrderEntity),
    );

    if (order.statusCode == 200) {
      couponModel = ProductsCouponModel.fromJson(order.data);
    }

    return couponModel;
  }
}
