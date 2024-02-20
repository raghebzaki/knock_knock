
import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/products_order_entity.dart';

abstract class MyProductsOrdersRepo {
  Future<Either<Failure, List<ProductsOrderEntity>>> myOrders(ProductsOrderEntity myOrdersEntity);
}