import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/place_order_entity.dart';

abstract class PlaceOrderRepo {
  Future<Either<Failure, PlaceOrderEntity>> placeOrder(
      PlaceOrderEntity placeOrderEntity);
}
