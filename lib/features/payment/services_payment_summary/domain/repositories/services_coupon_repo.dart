import 'package:dartz/dartz.dart';
import 'package:knockknock/features/payment/services_payment_summary/domain/entities/coupon_entity.dart';

import '../../../../../../core/resources/api/failure_class.dart';

abstract class ServicesCouponRepo {
  Future<Either<Failure, ServicesCouponEntity>> applyCoupon(
      ServicesCouponEntity placeOrderEntity);
}
