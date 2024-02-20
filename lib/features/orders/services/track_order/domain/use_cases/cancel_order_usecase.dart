import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/cancel_order_entity.dart';
import '../repositories/cancel_order_repo.dart';

class CancelServicesOrderUseCase {
  final CancelServicesOrderRepo cancelOrderRepo;

  CancelServicesOrderUseCase({required this.cancelOrderRepo});

  Future<Either<Failure, CancelServicesOrderEntity>> call(
      CancelServicesOrderEntity cancelOrderEntity) async {
    return await cancelOrderRepo.cancelOrder(cancelOrderEntity);
  }
}
