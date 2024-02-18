import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/products_category_entity.dart';
import '../repositories/products_category_repo.dart';


class ProductsCategoryUseCase {
  final ProductsCategoryRepo productsCategoryRepo;

  ProductsCategoryUseCase(this.productsCategoryRepo);

  Future<Either<Failure, List<ProductsCategoryEntity>>> call() async {
    return await productsCategoryRepo.getAllProductsCategory();
  }
}
