import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/shared/entities/service_entity.dart';
import '../repositories/services_repo.dart';


class ServicesUseCase {
  final ServicesRepo servicesRepo;

  ServicesUseCase(this.servicesRepo);

  Future<Either<Failure, List<ServicesEntity>>> call(int? nextPage) async {
    return await servicesRepo.getAllProducts( nextPage);
  }
}
