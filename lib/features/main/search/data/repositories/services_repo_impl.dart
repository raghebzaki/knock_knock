import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../../../../core/shared/entities/service_entity.dart';
import '../../domain/repositories/services_repo.dart';
import '../data_sources/services_service.dart';



class ServicesSearchRepoImpl implements ServicesSearchRepo {
  final ServicesSearchService servicesService;

  ServicesSearchRepoImpl(this.servicesService);


  @override
  Future<Either<Failure, List<ServicesEntity>>> getAllProducts(String? search, int? nextPage) async {
    final result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final getContracts = await servicesService.getAllServices( search,nextPage);
        return right(getContracts);
      } on DioException catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}