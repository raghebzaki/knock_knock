import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/cancel_order_entity.dart';
import '../repositories/cancel_order_repo.dart';

class CancelServiceOrderUseCase {
  final CancelServiceOrderRepo cancelOrderRepo;

  CancelServiceOrderUseCase({required this.cancelOrderRepo});

  Future<Either<Failure, CancelServiceOrderEntity>> call(
      CancelServiceOrderEntity cancelOrderEntity) async {
    return await cancelOrderRepo.cancelOrder(cancelOrderEntity);
  }
}
