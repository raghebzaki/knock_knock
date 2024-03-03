import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/package_entity.dart';
import '../repositories/package_repo.dart';


class PackageUseCase {
  final PackageRepo pakageRepo;

  PackageUseCase(this.pakageRepo);

  Future<Either<Failure, List<PackageEntity>>> call() async {
    return await pakageRepo.getAllPackage();
  }
}
