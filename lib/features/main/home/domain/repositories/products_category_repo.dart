import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/products_category_entity.dart';


abstract class ProductsCategoryRepo {
  Future<Either<Failure, List<ProductsCategoryEntity>>> getAllProductsCategory();

}
