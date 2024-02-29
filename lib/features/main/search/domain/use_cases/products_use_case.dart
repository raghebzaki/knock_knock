import 'package:dartz/dartz.dart';
import 'package:knockknock/core/shared/entities/product_entity.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../repositories/products_repo.dart';


class ProductsSearchUseCase {
  final ProductsSearchRepo productsRepo;

  ProductsSearchUseCase(this.productsRepo);

  Future<Either<Failure, List<ProductEntity>>> call(int? nextPage,String? search,) async {
    return await productsRepo.getAllProducts( nextPage,search);
  }
}
