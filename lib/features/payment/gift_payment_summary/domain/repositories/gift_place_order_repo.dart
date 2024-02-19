import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/gift_place_order_entity.dart';

abstract class GiftPlaceOrderRepo {
  Future<Either<Failure, GiftPlaceOrderEntity>> placeOrder(
      GiftPlaceOrderEntity placeOrderEntity);
}
