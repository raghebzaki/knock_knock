import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/products_category_entity.dart';
import '../../domain/repositories/products_category_repo.dart';
import '../data_sources/products_category_service.dart';


class ProductsCategoryRepoImpl implements ProductsCategoryRepo {
  final ProductsCategoryService carouselService;

  ProductsCategoryRepoImpl(this.carouselService);


  @override
  Future<Either<Failure, List<ProductsCategoryEntity>>> getAllProductsCategory() async {
    final result = await Connectivity().checkConnectivity();
    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final getProductsCategory = await carouselService.getAllProductsCategory();
        return right(getProductsCategory);
      } on DioException catch (error) {
        return Left(ErrorHandler.handle(error).failure);
      }
    } else {
      return Left(DataSource.noInternetConnection.getFailure());
    }
  }
}