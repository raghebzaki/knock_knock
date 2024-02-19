import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/gift_place_order_entity.dart';
import '../repositories/gift_place_order_repo.dart';

class GiftPlaceOrderUseCase {
  final GiftPlaceOrderRepo placeOrderRepo;

  GiftPlaceOrderUseCase({
    required this.placeOrderRepo,
  });

  Future<Either<Failure, GiftPlaceOrderEntity>> call(
      GiftPlaceOrderEntity placeOrderEntity) async {
    return await placeOrderRepo.placeOrder(placeOrderEntity);
  }
}
