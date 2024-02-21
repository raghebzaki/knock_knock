import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/cancel_order_entity.dart';
import '../repositories/cancel_order_repo.dart';

class CancelProductOrderUseCase {
  final CancelProductOrderRepo cancelOrderRepo;

  CancelProductOrderUseCase({required this.cancelOrderRepo});

  Future<Either<Failure, CancelProductOrderEntity>> call(
      CancelProductOrderEntity cancelOrderEntity) async {
    return await cancelOrderRepo.cancelOrder(cancelOrderEntity);
  }
}
