import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../../../../../../core/shared/entities/order_entity.dart';
import '../repositories/my_orders_repo.dart';

class MyOrdersUseCase {
  final MyOrdersRepo myOrdersRepo;

  MyOrdersUseCase({required this.myOrdersRepo});

  Future<Either<Failure, List<OrderEntity>>> call(
      OrderEntity myOrdersEntity) async {
    return await myOrdersRepo.myOrders(myOrdersEntity);
  }
}
