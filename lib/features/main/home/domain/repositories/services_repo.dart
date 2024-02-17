import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/shared/entities/service_entity.dart';


abstract class ServicesRepo {
  Future<Either<Failure, List<ServicesEntity>>> getAllProducts(int? nextPage);

}
