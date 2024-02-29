import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:knockknock/core/shared/entities/product_entity.dart';
import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../domain/repositories/products_repo.dart';
import '../data_sources/products_service.dart';


class ProductsSearchRepoImpl implements ProductsSearchRepo {
  final ProductsSearchService productsService;

  ProductsSearchRepoImpl(this.productsService);


  @override
  Future<Either<Failure, List<ProductEntity>>> getAllProducts(int? nextPage, String? search,) async {
    final result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final getContracts = await productsService.getAllProducts( nextPage,search);
        return right(getContracts);
      } on DioException catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}