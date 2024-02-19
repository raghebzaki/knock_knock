import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/services_place_order_entity.dart';
import '../repositories/services_place_order_repo.dart';

class ServicesPlaceOrderUseCase {
  final ServicesPlaceOrderRepo placeOrderRepo;

  ServicesPlaceOrderUseCase({
    required this.placeOrderRepo,
  });

  Future<Either<Failure, ServicesPlaceOrderEntity>> call(
      ServicesPlaceOrderEntity placeOrderEntity) async {
    return await placeOrderRepo.placeOrder(placeOrderEntity);
  }
}
