import 'package:dartz/dartz.dart';
import 'package:knockknock/core/shared/entities/product_entity.dart';

import '../../../../../../core/resources/api/failure_class.dart';


abstract class ProductsSearchRepo {
  Future<Either<Failure, List<ProductEntity>>> getAllProducts(int? nextPage,String? search,);

}
