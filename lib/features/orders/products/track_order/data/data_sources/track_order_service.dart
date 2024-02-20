import 'package:dio/dio.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../domain/entities/track_order_entity.dart';
import '../models/track_order_model.dart';


abstract class TrackOrderService {
  Future<TrackOrderModel> trackOrder(TrackOrderEntity trackOrderEntity);
}

class TrackOrderServiceImpl implements TrackOrderService {
  @override
  Future<TrackOrderModel> trackOrder(TrackOrderEntity trackOrderEntity) async {
    Dio dio = await DioFactory.getDio();
    TrackOrderModel trackOrderModel = const TrackOrderModel();

    final order = await dio.put(
      AppConstants.apiBaseUrl + AppConstants.getMyOrdersUri,
      data: TrackOrderModel.toJson(trackOrderEntity),
    );

    if (order.statusCode == 200) {
      trackOrderModel = TrackOrderModel.fromJson(order.data);
    }

    return trackOrderModel;
  }

}
