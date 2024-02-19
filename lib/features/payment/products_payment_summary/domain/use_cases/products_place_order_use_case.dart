import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/products_place_order_entity.dart';
import '../repositories/products_place_order_repo.dart';

class ProductsPlaceOrderUseCase {
  final ProductsPlaceOrderRepo placeOrderRepo;

  ProductsPlaceOrderUseCase({
    required this.placeOrderRepo,
  });

  Future<Either<Failure, ProductsPlaceOrderEntity>> call(
      ProductsPlaceOrderEntity placeOrderEntity) async {
    return await placeOrderRepo.placeOrder(placeOrderEntity);
  }
}
