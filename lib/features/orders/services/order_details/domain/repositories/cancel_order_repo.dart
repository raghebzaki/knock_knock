
import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/cancel_order_entity.dart';

abstract class CancelServiceOrderRepo {
  Future<Either<Failure, CancelServiceOrderEntity>> cancelOrder(CancelServiceOrderEntity cancelOrderEntity);
}