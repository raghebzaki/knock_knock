import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/shared/entities/service_entity.dart';
import '../repositories/services_repo.dart';


class ServicesSearchUseCase {
  final ServicesSearchRepo servicesRepo;

  ServicesSearchUseCase(this.servicesRepo);

  Future<Either<Failure, List<ServicesEntity>>> call(String? search,int? nextPage) async {
    return await servicesRepo.getAllProducts(search, nextPage);
  }
}
