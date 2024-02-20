
import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/services_order_entity.dart';

abstract class MyServicesOrdersRepo {
  Future<Either<Failure, List<ServicesOrderEntity>>> myOrders(ServicesOrderEntity myOrdersEntity);
}