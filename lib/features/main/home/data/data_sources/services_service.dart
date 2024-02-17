import 'package:dio/dio.dart';
import 'package:knockknock/core/shared/models/services_model.dart';

import '../../../../../../core/service/dio_factory.dart';
import '../../../../../../core/utils/app_constants.dart';

abstract class ServicesService {
  Future<List<ServicesModel>> getAllServices(int? nextPage);
}

class ServicesServiceImpl implements ServicesService {

  @override
  Future<List<ServicesModel>> getAllServices(int? nextPage) async {

    Dio dio = await DioFactory.getDio();
    List<ServicesModel> servicesList = [];

    final contracts = await dio.get(
      AppConstants.apiBaseUrl + AppConstants.servicesUri,
      queryParameters: {
        "page": nextPage,
      },
    );

    if (contracts.statusCode == 200) {
      Iterable l = contracts.data['data']['data'];
      servicesList = List<ServicesModel>.from(
        l.map(
              (model) => ServicesModel.fromJson(model),
        ),
      );
    }

    return servicesList;
  }

}
