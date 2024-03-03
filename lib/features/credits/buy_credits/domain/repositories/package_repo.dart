import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/package_entity.dart';


abstract class PackageRepo {
  Future<Either<Failure, List<PackageEntity>>> getAllPackage();

}
