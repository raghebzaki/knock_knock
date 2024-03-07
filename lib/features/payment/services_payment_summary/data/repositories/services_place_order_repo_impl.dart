import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/services_place_order_entity.dart';
import '../../domain/repositories/services_place_order_repo.dart';
import '../data_sources/services_place_order_service.dart';

class ServicesPlaceOrderRepoImpl implements ServicesPlaceOrderRepo {
  final ServicesPlaceOrderService placeOrderService;

  ServicesPlaceOrderRepoImpl({required this.placeOrderService});

  @override
  Future<Either<Failure, ServicesPlaceOrderEntity>> placeOrder(ServicesPlaceOrderEntity placeOrderEntity) async {
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
  @override
  Future<Either<Failure, ServicesPlaceOrderEntity>> placeOrderAfterPayment(ServicesPlaceOrderEntity placeOrderEntity) async {
    final result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final order = await placeOrderService.placeOrderAfterPayment(placeOrderEntity);
        return right(order);
      } on DioException catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}