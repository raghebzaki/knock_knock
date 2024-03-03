import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/buy_credit_place_order_entity.dart';

abstract class BuyCreditPlaceOrderRepo {
  Future<Either<Failure, BuyCreditPlaceOrderEntity>> buyCredit(
      BuyCreditPlaceOrderEntity placeOrderEntity);
}
