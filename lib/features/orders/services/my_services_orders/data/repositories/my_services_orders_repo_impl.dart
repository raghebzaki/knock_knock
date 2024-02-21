import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/services_order_entity.dart';
import '../../domain/repositories/my_services_orders_repo.dart';
import '../data_sources/my_services_orders_service.dart';

class MyServicesOrdersRepoImpl implements MyServicesOrdersRepo {
  final MyServicesOrdersService myOrdersService;

  MyServicesOrdersRepoImpl({required this.myOrdersService});

  @override
  Future<Either<Failure, List<ServicesOrderEntity>>> myOrders(ServicesOrderEntity myOrdersEntity,int? nextPage) async {
    final result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final orders = await myOrdersService.getOrders(myOrdersEntity,nextPage);
        return right(orders);
      } on DioException catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}