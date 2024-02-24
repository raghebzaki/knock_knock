import 'dart:async';

import 'package:dio/dio.dart';

import '../../../../../core/utils/app_constants.dart';
import '../shared/models/delivery_cost_model.dart';


class DeliveryCostService {

  static Future deleteUserAccount() async {
    Dio dio = Dio();

    final userAccount = await dio.get(AppConstants.apiBaseUrl + AppConstants.getDeliveryUri,);

    DeliveryCost.fromJson(userAccount.data['data']);
    AppConstants.deliveryFee=int.parse(DeliveryCost.deliveryCost!);
  }
}
