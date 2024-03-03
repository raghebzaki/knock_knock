import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/package_entity.dart';
import '../../domain/repositories/package_repo.dart';
import '../data_sources/package_service.dart';


class PackageRepoImpl implements PackageRepo {
  final PackageService packageService;

  PackageRepoImpl(this.packageService);


  @override
  Future<Either<Failure, List<PackageEntity>>> getAllPackage() async {
    final result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final getCarousel = await packageService.getAllPackage();
        return right(getCarousel);
      } on DioException catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}