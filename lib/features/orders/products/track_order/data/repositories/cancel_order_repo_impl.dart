import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/cancel_order_entity.dart';
import '../../domain/repositories/cancel_order_repo.dart';
import '../data_sources/cancel_order_service.dart';

class CancelOrderRepoImpl implements CancelOrderRepo {
  final CancelOrderService cancelOrderService;

  CancelOrderRepoImpl({required this.cancelOrderService});

  @override
  Future<Either<Failure, CancelOrderEntity>> cancelOrder(
      CancelOrderEntity cancelOrderEntity) async {
    final result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final order = await cancelOrderService.cancelOrder(cancelOrderEntity);
        return right(order);
      } on DioException catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}
