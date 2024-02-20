
import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/cancel_order_entity.dart';

abstract class CancelServicesOrderRepo {
  Future<Either<Failure, CancelServicesOrderEntity>> cancelOrder(CancelServicesOrderEntity cancelOrderEntity);
}