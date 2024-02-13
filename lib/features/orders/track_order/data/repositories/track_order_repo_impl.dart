import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../../../core/resources/api/data_sources.dart';
import '../../../../../../core/resources/api/error_handler.dart';
import '../../../../../../core/resources/api/failure_class.dart';
import '../../domain/entities/track_order_entity.dart';
import '../../domain/repositories/track_order_repo.dart';
import '../data_sources/track_order_service.dart';

class TrackOrderRepoImpl implements TrackOrderRepo {
  final TrackOrderService trackOrderService;

  TrackOrderRepoImpl({required this.trackOrderService});

  @override
  Future<Either<Failure, TrackOrderEntity>>  trackOrder(
      TrackOrderEntity  trackOrderEntity) async {
    final result = await Connectivity().checkConnectivity();

    if (result == ConnectivityResult.mobile ||
        result == ConnectivityResult.wifi) {
      try {
        final order = await  trackOrderService.trackOrder( trackOrderEntity);
        return right(order);
      } on DioException catch (error) {
        return left(ErrorHandler.handle(error).failure);
      }
    } else {
      return left(DataSource.noInternetConnection.getFailure());
    }
  }
}
