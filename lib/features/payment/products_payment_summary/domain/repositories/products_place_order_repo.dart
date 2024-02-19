import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/products_place_order_entity.dart';

abstract class ProductsPlaceOrderRepo {
  Future<Either<Failure, ProductsPlaceOrderEntity>> placeOrder(
      ProductsPlaceOrderEntity placeOrderEntity);
}
