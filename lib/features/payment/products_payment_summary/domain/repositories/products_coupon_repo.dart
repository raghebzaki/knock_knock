import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/products_coupon_entity.dart';

abstract class ProductsCouponRepo {
  Future<Either<Failure, ProductsCouponEntity>> applyCoupon(
      ProductsCouponEntity placeOrderEntity);
}
