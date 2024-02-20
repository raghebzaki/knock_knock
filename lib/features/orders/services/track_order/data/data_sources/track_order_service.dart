import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/track_order_entity.dart';
import '../models/track_order_model.dart';


abstract class TrackServicesOrderService {
  Future<TrackServicesOrderModel> trackOrder(TrackServicesOrderEntity trackOrderEntity);
}

class TrackServicesOrderServiceImpl implements TrackServicesOrderService {
  @override
  Future<TrackServicesOrderModel> trackOrder(TrackServicesOrderEntity trackOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    TrackServicesOrderModel trackOrderModel = const TrackServicesOrderModel();

    final order = await dio.put(
      AppConstants.apiBaseUrl + AppConstants.getMyOrdersUri,
      data: TrackServicesOrderModel.toJson(trackOrderEntity),
    );

    if (order.statusCode == 200) {
      trackOrderModel = TrackServicesOrderModel.fromJson(order.data);
    }

    return trackOrderModel;
  }

}
