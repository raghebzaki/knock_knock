import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:knockknock/core/shared/entities/product_entity.dart';
import 'package:knockknock/features/main/products/data/data_sources/products_service.dart';
import 'package:knockknock/features/main/products/domain/repositories/products_repo.dart';
import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';


class ProductsRepoImpl implements ProductsRepo {
  final ProductsService productsService;

  ProductsRepoImpl(this.productsService);


  @override
  Future<Either<Failure, List<ProductEntity>>> getAllProducts( int? nextPage,num? categoryId) async {
    final result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final getContracts = await productsService.getAllProducts( nextPage,categoryId);
        return right(getContracts);
      } on DioException catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}