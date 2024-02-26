import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/products_order_entity.dart';
import '../repositories/my_products_orders_repo.dart';

class MyOrdersUseCase {
  final MyProductsOrdersRepo myOrdersRepo;

  MyOrdersUseCase({required this.myOrdersRepo});

  Future<Either<Failure, List<ProductsOrderEntity>>> call(
      ProductsOrderEntity myOrdersEntity,num? nextPage) async {
    return await myOrdersRepo.myOrders(myOrdersEntity,nextPage);
  }
}
