import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/services_order_entity.dart';
import '../repositories/my_services_orders_repo.dart';

class MyServicesOrdersUseCase {
  final MyServicesOrdersRepo myOrdersRepo;

  MyServicesOrdersUseCase({required this.myOrdersRepo});

  Future<Either<Failure, List<ServicesOrderEntity>>> call(
      ServicesOrderEntity myOrdersEntity) async {
    return await myOrdersRepo.myOrders(myOrdersEntity);
  }
}
