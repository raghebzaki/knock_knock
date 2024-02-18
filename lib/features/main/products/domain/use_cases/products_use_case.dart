import 'package:dartz/dartz.dart';
import 'package:knockknock/core/shared/entities/product_entity.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../repositories/products_repo.dart';


class ProductsUseCase {
  final ProductsRepo productsRepo;

  ProductsUseCase(this.productsRepo);

  Future<Either<Failure, List<ProductEntity>>> call(int? nextPage,num? categoryId) async {
    return await productsRepo.getAllProducts( nextPage,categoryId);
  }
}
