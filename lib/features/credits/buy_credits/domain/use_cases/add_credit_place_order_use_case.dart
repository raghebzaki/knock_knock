import 'package:dartz/dartz.dart';

import '../../../../../../core/resources/api/failure_class.dart';
import '../entities/buy_credit_place_order_entity.dart';
import '../repositories/buy_credit_place_order_repo.dart';

class AddCreditPlaceOrderUseCase {
  final BuyCreditPlaceOrderRepo addCreditRepo;
  AddCreditPlaceOrderUseCase({
    required this.addCreditRepo,
  });

  Future<Either<Failure, BuyCreditPlaceOrderEntity>> call(
      BuyCreditPlaceOrderEntity placeOrderEntity) async {
    return await addCreditRepo.addCredit(placeOrderEntity);
  }
}
