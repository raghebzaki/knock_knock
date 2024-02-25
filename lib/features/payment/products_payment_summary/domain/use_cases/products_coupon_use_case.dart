import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/products_coupon_entity.dart';
import '../repositories/products_coupon_repo.dart';

class ProductsCouponUseCase {
  final ProductsCouponRepo couponRepo;

  ProductsCouponUseCase({
    required this.couponRepo,
  });

  Future<Either<Failure, ProductsCouponEntity>> call(
      ProductsCouponEntity placeOrderEntity) async {
    return await couponRepo.applyCoupon(placeOrderEntity);
  }
}
