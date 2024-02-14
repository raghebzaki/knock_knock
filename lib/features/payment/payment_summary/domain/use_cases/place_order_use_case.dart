import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/place_order_entity.dart';
import '../repositories/place_order_repo.dart';

class PlaceOrderUseCase {
  final PlaceOrderRepo placeOrderRepo;

  PlaceOrderUseCase({
    required this.placeOrderRepo,
  });

  Future<Either<Failure, PlaceOrderEntity>> call(
      PlaceOrderEntity placeOrderEntity) async {
    return await placeOrderRepo.placeOrder(placeOrderEntity);
  }
}
