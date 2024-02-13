import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/cancel_order_entity.dart';
import '../repositories/cancel_order_repo.dart';

class CancelOrderUseCase {
  final CancelOrderRepo cancelOrderRepo;

  CancelOrderUseCase({required this.cancelOrderRepo});

  Future<Either<Failure, CancelOrderEntity>> call(
      CancelOrderEntity cancelOrderEntity) async {
    return await cancelOrderRepo.cancelOrder(cancelOrderEntity);
  }
}
