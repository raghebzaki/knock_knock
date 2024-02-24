import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/coupon_entity.dart';
import '../repositories/services_coupon_repo.dart';

class ServicesCouponUseCase {
  final ServicesCouponRepo couponRepo;

  ServicesCouponUseCase({
    required this.couponRepo,
  });

  Future<Either<Failure, ServicesCouponEntity>> call(
      ServicesCouponEntity placeOrderEntity) async {
    return await couponRepo.applyCoupon(placeOrderEntity);
  }
}
