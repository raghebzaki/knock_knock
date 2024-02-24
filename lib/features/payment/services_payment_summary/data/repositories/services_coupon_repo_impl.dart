import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/coupon_entity.dart';
import '../../domain/repositories/services_coupon_repo.dart';
import '../data_sources/services_coupon_service.dart';

class ServicesCouponRepoImpl implements ServicesCouponRepo {
  final ServicesCouponService couponService;

  ServicesCouponRepoImpl({required this.couponService});

  @override
  Future<Either<Failure, ServicesCouponEntity>> applyCoupon(ServicesCouponEntity placeOrderEntity) async {
    final result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final order = await couponService.applyCoupon(placeOrderEntity);
        return right(order);
      } on DioException catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}