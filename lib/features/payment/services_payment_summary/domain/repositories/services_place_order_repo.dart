import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/services_place_order_entity.dart';

abstract class ServicesPlaceOrderRepo {
  Future<Either<Failure, ServicesPlaceOrderEntity>> placeOrder(
      ServicesPlaceOrderEntity placeOrderEntity);
}
