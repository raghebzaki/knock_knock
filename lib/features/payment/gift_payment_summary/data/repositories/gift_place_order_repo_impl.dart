import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/gift_place_order_entity.dart';
import '../../domain/repositories/gift_place_order_repo.dart';
import '../data_sources/gift_place_order_service.dart';

class GiftPlaceOrderRepoImpl implements GiftPlaceOrderRepo {
  final GiftPlaceOrderService placeOrderService;

  GiftPlaceOrderRepoImpl({required this.placeOrderService});

  @override
  Future<Either<Failure, GiftPlaceOrderEntity>> placeOrder(GiftPlaceOrderEntity placeOrderEntity) async {
    final result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final order = await placeOrderService.placeOrder(placeOrderEntity);
        return right(order);
      } on DioException catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}